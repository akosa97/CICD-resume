pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/cloudsecakosa/CICD-webapp-portfolio.git'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'sudo apt update'
                sh 'sudo apt install -y apache2'
                sh 'sudo cp -R /var/lib/jenkins/workspace/resume/* /var/www/html/'
                sh 'sudo service apache2 restart'
            }
        }
    }
}
