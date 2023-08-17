pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: 'https://github.com/cloudsecakosa/secureCICDresume.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Testing...'
                snykSecurity(
                    snykInstallation: 'cloudsecakosa', // Replace with your Snyk Installation Name
                    snykTokenId: 'c7da9aa6-7af6-4b49-a9f1-c237d4a66ea3', // Replace with your Snyk API Token ID
                    additionalArguments: '--all-projects --detection-depth=<DEPTH>'
                )
            }
        }

        stage('Deploy') {
            steps {
                // Create destination directory if it doesn't exist
                sh 'sudo mkdir -p /var/www/html'
                
                // Deploy the resume file to the web server
                sh 'sudo cp -R /var/lib/jenkins/workspace/secureCICDresume/resume.html /var/www/html/'
            }
        }
    }
}
