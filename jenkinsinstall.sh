#!/bin/bash

# Import Jenkins GPG key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add Jenkins repository to apt sources
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update apt package lists
sudo apt-get update

# Install required packages
sudo apt-get install -y fontconfig openjdk-11-jre

# Install Jenkins
sudo apt-get install -y jenkins

exit 0
