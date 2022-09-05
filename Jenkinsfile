pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Githubcredentials', url: 'https://github.com/Ajay-kethineni/test-tag.git']]])
                
                }
		    script{
		    try{
                   bat "cd Users"
		    }
		   catch (Exception e) {
      echo 'Exception occurred: ' + e.toString()
		   }   }

                   echo "main chekout"
		   bat "git checkout main"
            }
        }
	
 
       }

 post{
        success {
            echo "Build passed"
			script{
             echo "In Tagging"		  
                 sh "git branch ${env.Branch_Name}-${env.BUILD_NUMBER}"
                 sh "git push origin ${env.Branch_Name}-${env.BUILD_NUMBER}"
				 }
        }
        
    }	   
}
