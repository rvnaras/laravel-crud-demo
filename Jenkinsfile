pipeline {	
  agent any			
  stages {
    stage('Build Laravel 8 PHP') {	
      steps {	
	      script {
            sh 'echo Build Laravel 8 PHP'
          }		        	
        }	
    }

    stage('Publish Laravel 8 PHP') {	
	    steps {
	      script {
            sh 'echo Publish Laravel 8 PHP'
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
