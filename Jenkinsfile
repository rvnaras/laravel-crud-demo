pipeline {	
  agent {label 'master'}	
  options {	
    buildDiscarder(logRotator(numToKeepStr: '5'))	
  }		
  
    stage('Build Laravel 8 PHP') {	
      steps {	
	      script {
            sh 'docker build -t ravennaras/crud8laravel:0.1.$BUILD_NUMBER .'
          }		        	
        }	
    }

    stage('Publish Laravel 8 PHP') {	
	    steps {
	      script {
            sh 'docker push ravennaras/crud8laravel:0.1.$BUILD_NUMBER'
          }		
        }	      
    }

    stage('Deploy to K8s'){
        steps {
          script{

          }
        }
    }
  }
