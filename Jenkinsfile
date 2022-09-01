pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'test', url: 'https://github.com/Ajay-kethineni/Demo.git']]])
                
                }
            }
        }
       


        stage ('tagging'){
		steps{
        sh "git remote set-url origin git@github.com:Ajay-kethineni/Demo.git"
        // tags current changeset
        sh "git tag -a snapshot -m "
        sh "git push origin :refs/tags/snapshot"
        // pushes the tags
        sh "git push --tags"
		}
		}
    
} 
}

