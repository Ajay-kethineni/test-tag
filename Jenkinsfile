pipeline {
    agent any
    stages{
        stage('Checkout code') {
            steps {
                script{
                 echo "In Checkout code"
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Githubcredentials', url: 'https://github.com/Ajay-kethineni/test-tag.git']]])
                
                }
                commands=(
    "cd vanalyticsv3-ui; sh build_report_ui.sh; docker save -o ../artifacts/v3-report-ui.tar v3-report-ui:latest; cd ..; gzip artifacts/v3-report-ui.tar;"
)
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
			  def date = new Date()
			 def tz =  TimeZone.getTimeZone('UTC')
			 echo date.format('yyyyMMdd', tz) 
			  def build_date = date.format('yyyyMMdd', tz) 
			  
                 bat "git branch release-${build_date}-${env.BUILD_NUMBER}"
                 bat "git push origin release-${build_date}-${env.BUILD_NUMBER}"
				 }
        }
        
    }	   
}
