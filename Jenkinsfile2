pipeline {
  agent any
  environment {
    dockerHubRegistry = '192.168.0.5000/ra'
    dockerHubRegistryCredential = '{dGVzdDp0ZXN0}'
  }
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/seungsura/project-k8s', branch: 'main'
      }
    }
    stage('docker build') {
      steps {
        sh "sudo docker build . -t ${dockerHubRegistry}:${currentBuild.number}"
	sh "sudo docker build . -t ${dockerHubRegistry}:latest"
      }
    }	  
    stage('docker push') {
      steps {
        withDockerRegistry([ credentialsId: dockerHubRegistryCredential, url: "" ]) {
	  sh "sudo docker push ${dockerHubRegistry}:${currentBuild.number}"
          sh "sudo docker push ${dockerHubRegistry}:latest"
      }	
    }     
  }
}
}
