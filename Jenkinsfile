pipeline {
  agent any
  
  stages {
    stage('Clone Repository') {
      steps {
        git branch: 'main', url: 'https://github.com/cloudsecakosa/CICD-resume.git'
      }
    }
    
    stage('Build') {
      steps {
        sh 'mkdir -p build'
        sh 'cp resume.html build/'
      }
    }
    
    stage('Deploy') {
      environment {
        DOCKER_IMAGE = 'ubuntu:latest'
      }
      steps {
        script {
          docker.withRegistry('', '') {
            def deployContainer = docker.image(DOCKER_IMAGE).run('-v $(pwd)/build:/var/www/public_html -p 80:80 -d')
            def containerId = deployContainer.id
            
            // Copy resume.html to the container
            sh "docker cp build/resume.html $containerId:/var/www/public_html/"
            
            // Restart Apache in the container
            sh "docker exec $containerId service apache2 restart"
            
            // Clean up the container
            sh "docker stop $containerId"
            sh "docker rm $containerId"
          }
        }
      }
    }
  }
}
