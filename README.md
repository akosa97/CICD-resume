Step 1: Creating and Uploading my Resume HTML Template

I developed my resume using an HTML template.
I uploaded the HTML file to my GitHub repository, allowing me to version control and collaborate on my resume.

Step 2: Configuring Jenkins and Setting Up a Webhook

I created an EC2 instance where I installed Jenkins and Docker.

![Step 5, install jenkins   docker](https://github.com/cloudsecakosa/CICD-resume/assets/91312467/436477cf-a95a-4e1c-8f66-950f715c5d80)

I opened port 8080 on the EC2 instance to access Jenkins through a web browser.

![step 6, open port 8080 and access jenkins using your EC2 IP](https://github.com/cloudsecakosa/CICD-resume/assets/91312467/2dfacaaf-f2ed-4204-bd3a-ac08411c96db)

I accessed the Jenkins dashboard and performed the initial setup, including installing necessary plugins and configuring basic security settings.

I added a webhook to my GitHub repository, enabling Jenkins to receive notifications whenever I make a new commit.

![Step 7, configure jenkins, add webhook, create pipeline](https://github.com/cloudsecakosa/CICD-resume/assets/91312467/6825d512-ef9e-49d3-a201-2ce7be956d9b)

Step 3: Writing my Pipeline Script

I defined my pipeline script using the Jenkins declarative pipeline syntax.
In the pipeline block, I set the overall configuration of my pipeline.
I specified agent any to allow the pipeline to run on any available Jenkins agent (worker node).
My pipeline consisted of two stages: "Checkout" and "Deploy".
In the "Checkout" stage, I cloned my GitHub repository containing my resume code.
Within the stage, I used the git step to clone the repository.
I specified the branch to be cloned as main.
I provided the URL of my GitHub repository.
In the "Deploy" stage, I deployed my resume file to the web server.
Within the stage, I used the sh step to execute a shell command.
I used the command cp -R /var/lib/jenkins/workspace/CICDresume/resume.html /var/www/html/ to copy the resume.html file from my Jenkins workspace to the /var/www/html/ directory on the web server.

Step 4: Running the Pipeline and Achieving Automatic Deployment

After writing my pipeline script, I triggered the pipeline to run.
The pipeline executed the stages in sequence.
In the "Deploy" stage, my resume file (resume.html) was successfully copied to the directory (/var/www/html/) on the web server.
Any subsequent commits I make to my GitHub repository will trigger the pipeline to run again, automatically deploying the updated version of my resume.

![Step 8, run the pipeline, deployment was successful](https://github.com/cloudsecakosa/CICD-resume/assets/91312467/752e7cfd-cb63-4c3d-b417-10df07a030c0)

By following these steps, I have successfully implemented a CI/CD pipeline using Jenkins to deploy my resume website. The pipeline allows for automated deployment whenever I make changes to my GitHub repository, providing a seamless and efficient workflow for managing and updating my resume.

![CICDresume](https://github.com/cloudsecakosa/CICD-resume/assets/91312467/34628e84-8715-46b0-bf1a-e4f70521e402)

