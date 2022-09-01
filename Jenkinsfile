pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Githubcredentials', url: 'https://github.com/Ajay-kethineni/test-tag.git']]])
                
                }
                   echo "main chekout"
		   bat "git checkout main"
            }
        }
        stage('Git Tagging') {
            steps {
			script{
             echo "In Tagging"
			 def d = new Date(0) 
			 def tz = TimeZone.getTimeZone('UTC') 
			 echo d.format('yyyyMMdd', tz) 
			  next_date = d.format('yyyyMMdd', tz) 
			  }
			  branch_name = release-next_date-${env.BUILD_NUMBER}
                 bat "git branch release-next_date-${env.BUILD_NUMBER}"
                 bat "git push origin"
		}
            }
       } 
}
