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
             echo "In Tagging"
			 def date = new Date()
			  next_date = curr_release.format("yyyyMMdd", TimeZone.getTimeZone('UTC'))
                 bat "git branch release-next_date-${env.BUILD_NUMBER}"
                 bat "git push"
		}
            }
       } 
}
