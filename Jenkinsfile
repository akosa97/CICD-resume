pipeline {
  agent any

  stages {
    stage('Clone Repository') {
      steps {
        git 'https://github.com/cloudsecakosa/CICD-webapp-portfolio.git'
      }
    }

    stage('Build') {
      steps {
        sh 'mkdir -p build'
        sh 'cp resume.html build/'
      }
    }

    stage('Deploy') {
      steps {
        sh 'mkdir -p public_html'
        sh 'cp -R build/resume.html public_html/'
      }
    }
  }
}
