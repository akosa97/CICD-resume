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
               // Run Snyk scan using the Synk Jenkins plugin
                  snykSecuritymonitor failOnIssues: true
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
