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
                sh 'apt update'
                sh 'apt install -y apache2'
                sh 'cp -R /var/lib/jenkins/workspace/resume/* /var/www/html/'
                sh 'systemctl restart apache2'
            }
        }
    }
}
