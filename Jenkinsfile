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
        DOCKER_IMAGE = 'ubuntu:22.04.2'
        CONTAINER_ID = 'a745d63f685413cc39e792a77ae48014dc16f93fbd574873ccb603c5234b68cb'
      }
      steps {
        script {
          docker.withRegistry('', '') {
            def deployContainer = docker.image(DOCKER_IMAGE).run("-v \$(pwd)/build:/var/www/public_html -p 8888:80 -d")
            def containerId = deployContainer.id
            
            // Copy resume.html to the container
            sh "docker cp build/resume.html $CONTAINER_ID:/var/www/public_html/"
            
            // Restart Apache in the container
            sh "docker exec $CONTAINER_ID service apache2 restart"
            
            // Clean up the container
            sh "docker stop $CONTAINER_ID"
            sh "docker rm $CONTAINER_ID"
          }
        }
      }
    }
  }
}
