pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: 'https://github.com/cloudsecakosa/secureCICDresume.git'
            }
        }

        stage('Snyk Scan') {
            steps {
                // Run Snyk scan on resume.html
                sh 'snyk test /var/lib/jenkins/workspace/secureCICDresume/resume.html'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the resume file to the web server
                sh 'cp -R /var/lib/jenkins/workspace/secureCICDresume/resume.html /var/www/html/'
            }
        }
    }
}
