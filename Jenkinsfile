pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Githubcredentials', url: 'https://github.com/Ajay-kethineni/test-tag.git']]])
	         bat "git checkout main"
                
                }
            }
        }
        stage('Git Tagging') {
            steps {
             echo "In Tagging"
                 bat "git branch release-$date +%Y%m%d-${env.BUILD_NUMBER}"
                 bat "git push"
		}
            }
       } 
}

