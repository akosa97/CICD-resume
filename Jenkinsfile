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
                sh 'sudo mkdir -p /var/www/html'
                
                // Deploy the resume file to the web server
                sh 'sudo cp -R /var/lib/jenkins/workspace/secureCICDresume/resume.html /var/www/html/'
            }
        }
    }
}

         stage('DAST') {
            steps {
                // Run OWASP ZAP DAST scan
                sh '/usr/share/owasp-zap/zap.sh -cmd -quickurl http://3.94.92.189/resume.html -quickprogress -port 9090'
            }
        }
    }
}
