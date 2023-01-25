pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/seungsura/project-k8s', branch: 'main'
      }
    }
    stage('docker build') {
      steps {
        sh '''
        appImage = docker build("192.168.0.195:5000/nginx")
        '''
      }
    }
   
    stage('docker push') {
      steps {
        sh ''' 
	docker.withRegistry('192.168.0.195:5000', dGVzdDp0ZXN0){
		appImage.push("${env.BUILD_NUMBER}")
		appImage.push("latest")
	'''
	}
      }     
    }
  }

