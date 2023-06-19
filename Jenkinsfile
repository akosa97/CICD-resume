pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: 'https://github.com/cloudsecakosa/CICD-resume.git'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the resume file to the web server
                sh 'cp -R /var/lib/jenkins/workspace/CICDresume/resume.html /var/www/html/'
            }
        }
    }
}
