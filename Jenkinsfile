pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'Githubcredentials', url: 'https://github.com/Ajay-kethineni/test-tag.git']]])
                
                }
            }
        }
        stage('Git Tagging') {
            steps {
             echo "In Tagging"
                 sh "git checkout -b release-$date +%Y%m%d-${env.BUILD_NUMBER}"
                 sh "git push"
		}
            }
       } 
}

