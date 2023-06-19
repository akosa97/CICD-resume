pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                // Clone code from your GitHub repository
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], 
                          userRemoteConfigs: [[url: 'https://github.com/cloudsecakosa/CICD-resume.git']]])
            }
        }
        stage('Deploy') {
            steps {
                // Deploy the updated resume to your web server
                sh 'cp -R /var/lib/jenkins/workspace/CICD-resume/Resume/* /var/www/html/'
            }
        }
    }
}
