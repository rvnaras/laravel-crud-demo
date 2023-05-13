pipeline {	
  agent any
  environment {
    dockerimagename = "ravennaras/crud8laravel"
    dockerimage = ""
    registryCredential = 'dockerhub'
  }
  stages {
    stage('Build Laravel 8 PHP') {	
      steps {	
	      script {
            sh 'echo Build Laravel 8 PHP'
            dockerimage = docker.build dockerimagename
          }		        	
       }	
    }

    stage('Publish Laravel 8 PHP') {	
	    steps {
	      script {
            sh 'echo Publish Laravel 8 PHP'
            docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {dockerImage.push("latest")}
         }		
       }	      
    }

    stage('Deploy to K8s'){
        steps {
          script{
            sh 'echo Deploy Laravel 8 PHP'
          }
        }
    }
  }
}
