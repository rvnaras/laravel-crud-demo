pipeline {	
  agent any
  stages {
    stage('Build Laravel 8 PHP') {	
      steps {	
	      script {
            sh '''
            echo Build Laravel 8 PHP
            docker build docker build -t ravennaras/crud8laravel:0.1.$BUILD_NUMBER . --network host
            '''
          }		        	
       }	
    }

    stage('Publish Laravel 8 PHP') {	
	    steps {
	      script {
            sh '''
            echo Publish Laravel 8 PHP
            docker push ravennaras/crud8laravel:0.1.$BUILD_NUMBER
            '''
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
