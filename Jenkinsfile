pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Githubcredentials', url: 'https://github.com/Ajay-kethineni/test-tag.git']]])
                
                }
            }
        }
        stage('Git Tagging') {
            steps {
             echo "In Tagging"
                 bat "git checkout -b release-$date +%Y%m%d-${env.BUILD_NUMBER}"
                 bat "git push"
		}
            }
       } 
}

