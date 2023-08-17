pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: 'https://github.com/cloudsecakosa/secureCICDresume.git'
            }
        }

        stage('Deploy') {
            steps {
                // Create destination directory if it doesn't exist
                sh 'mkdir -p /var/www/html'
                
                // Deploy the resume file to the web server
                sh 'cp -R /var/lib/jenkins/workspace/secureCICDresume/resume.html /var/www/html/'
            }
        }
    }
}
