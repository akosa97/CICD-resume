pipeline {
  agent any
  
  stages {
    stage('Checkout') {
      steps {
        // Checkout the repository
        checkout scm
      }
    }
    
    stage('Build') {
      steps {
        // Create the build directory
        sh 'mkdir -p build'
        
        // Copy the resume.html file to the build directory
        sh 'cp resume.html build/'
      }
    }
    
    stage('Deploy') {
      steps {
        // Publish the build directory as a static website
        sh 'mkdir -p public_html'
        sh 'cp -R build/* public_html/'
      }
    }
  }
}
