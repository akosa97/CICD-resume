pipeline {
  agent any

  stages {
    stage('Clone Repository') {
      steps {
        git branch: 'main', url: 'https://github.com/cloudsecakosa/CICD-webapp-portfolio.git'
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

        // Install Apache
        sh 'sudo apt update'
        sh 'sudo apt install -y apache2'

        // Create Apache virtual host configuration file
        sh 'sudo bash -c "cat > /etc/apache2/sites-available/mywebsite.conf << EOF\n<VirtualHost *:80>\n\tServerName 35.174.113.238\n\tDocumentRoot /var/www/public_html\n\n\t<Directory /var/www/public_html>\n\t\tOptions Indexes FollowSymLinks\n\t\tAllowOverride All\n\t\tRequire all granted\n\t</Directory>\n\n\tErrorLog ${APACHE_LOG_DIR}/error.log\n\tCustomLog ${APACHE_LOG_DIR}/access.log combined\n</VirtualHost>\nEOF"'

        // Enable the virtual host
        sh 'sudo a2ensite mywebsite.conf'

        // Restart Apache
        sh 'sudo systemctl restart apache2'
      }
    }
  }
}
