pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Githubcredentials', url: 'https://github.com/Ajay-kethineni/test-tag.git']]])
	         bat "git checkout main"
	         echo "In Tagging"
                 bat "git tag v2"
	         echo "push"
	         bat " git push origin v2"
                
                }
            }
        }

}

