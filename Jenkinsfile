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
        sudo docker build -t 192.168.0.195:5000/nginx:gany .
        sudo docker push 192.168.0.195:5000/nginx:gany
        '''
      }
    }
    
  }
}
