Step 1: Creating and Uploading Resume HTML Template

In this step, you developed your resume using an HTML template.
You uploaded the HTML file to your GitHub repository, making it accessible for version control and collaboration.

Step 2: Configuring Jenkins and Setting Up Webhook

You created an EC2 instance where you installed Jenkins and Docker.
Port 8080 was opened on the EC2 instance to allow access to Jenkins through the web browser.
You accessed the Jenkins dashboard and performed the initial setup, including setting up the necessary plugins and configuring basic security settings.
A webhook was added to your GitHub repository, which allows Jenkins to receive notifications whenever a new commit is made.

Step 3: Writing the Pipeline Script

The pipeline script is defined using the Jenkins declarative pipeline syntax.
The pipeline block sets the overall configuration of the pipeline.
The agent any directive specifies that the pipeline can run on any available agent (Jenkins worker node).
The pipeline consists of two stages: "Checkout" and "Deploy".
The "Checkout" stage is responsible for cloning the GitHub repository containing your resume code.
Within the stage, the git step is used to clone the repository.
The branch: 'main' parameter specifies the branch to be cloned.
The url parameter specifies the URL of the GitHub repository.
The "Deploy" stage is responsible for deploying the resume file to the web server.
Within the stage, the sh step executes a shell command.
The command cp -R /var/lib/jenkins/workspace/CICDresume/resume.html /var/www/html/ copies the resume.html file from the Jenkins workspace to the /var/www/html/ directory on the web server.

Step 4: Running the Pipeline and Automatic Deployment

After writing the pipeline script, you triggered the pipeline to run.
The pipeline executed the defined stages sequentially.
In the "Deploy" stage, the resume file (resume.html) was successfully copied to the web server's directory (/var/www/html/).
Any subsequent commits made to the GitHub repository trigger the pipeline to run again, automatically deploying the updated resume.
By following these steps, you have successfully implemented a CI/CD pipeline using Jenkins to deploy your resume website and achieved automated deployment whenever changes are made to the GitHub repository.
