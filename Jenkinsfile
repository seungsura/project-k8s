pipeline {
  agent any
  environment {
    dockerHubRegistry = '192.168.0.195:5000'
    dockerHubRegistryCredential = 'test'
  }
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/seungsura/project-k8s', branch: 'main'
      }
    }
    stage('docker build') {
      steps {
        sh "sudo docker build -t ${dockerHubRegistry}/istio-fleetman-webapp-angular:${currentBuild.number}"
        sh "sudo docker build -t ${dockerHubRegistry}:latest"
        sh "sudo docker build -t ${dockerHubRegistry}/istio-fleetman-vehicle-telemetry:${currentBuild.number}"
        sh "sudo docker build -t ${dockerHubRegistry}:latest"
        sh "sudo docker build -t ${dockerHubRegistry}/istio-fleetman-staff-service:${currentBuild.number}"
        sh "sudo docker build -t ${dockerHubRegistry}:latest"
        sh "sudo docker build -t ${dockerHubRegistry}/istio-fleetman-position-tracker:${currentBuild.number}"
        sh "sudo docker build -t ${dockerHubRegistry}:latest"
        sh "sudo docker build -t ${dockerHubRegistry}/istio-fleetman-position-simulator:${currentBuild.number}"
        sh "sudo docker build -t ${dockerHubRegistry}:latest"
        sh "sudo docker build -t ${dockerHubRegistry}/istio-fleetman-api-gateway:${currentBuild.number}"
        sh "sudo docker build -t ${dockerHubRegistry}:latest"
      }
    }
    stage('docker push') {
      steps {
        withDockerRegistry([ credentialsId: "$dockerHubRegistryCredential", url: "http://192.168.0.195:5000" ]) {
        sh "sudo docker push ${dockerHubRegistry}/istio-fleetman-webapp-angular:${currentBuild.number}"
        sh "sudo docker push ${dockerHubRegistry}:latest"
        sh "sudo docker push ${dockerHubRegistry}/istio-fleetman-vehicle-telemetry:${currentBuild.number}"
        sh "sudo docker push ${dockerHubRegistry}:latest"
        sh "sudo docker push ${dockerHubRegistry}/istio-fleetman-staff-service:${currentBuild.number}"
        sh "sudo docker push ${dockerHubRegistry}:latest"
        sh "sudo docker push ${dockerHubRegistry}/istio-fleetman-position-tracker:${currentBuild.number}"
        sh "sudo docker push ${dockerHubRegistry}:latest"
        sh "sudo docker push ${dockerHubRegistry}/istio-fleetman-position-simulator:${currentBuild.number}"
        sh "sudo docker push ${dockerHubRegistry}:latest"
        sh "sudo docker push ${dockerHubRegistry}/istio-fleetman-api-gateway:${currentBuild.number}"
        sh "sudo docker push ${dockerHubRegistry}:latest"
        }
    }
  }
}
}
