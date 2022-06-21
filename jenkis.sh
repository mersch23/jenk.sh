#!/bin/bash

	# Author: mersch
	# Date: June 20th, 2022
	# Description:  Jenkins installation package

echo "Your Jenkins installation will begin now."

sleep 2

sudo yum install java-1.8.0-openjdk-devel

if
 [ $? -ne 0]
 then 
 echo "Yum installation failed. Please read the error and try again."
 exit 2
 fi

sudo yum install wget -y

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo 

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

sudo yum install jenkins

sudo systemctl start jenkins 

sudo systemctl status jenkins

sudo systemctl enable jenkins 

ifconfig

echo "Launch your google chrome browser and type the IP address displayed followed by the port number 8080"

echo "Example http://your_ip_or_domain:8080"

sleep 200

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "Copy the 32-character long alphanumeric password displayed into the Administrator password field in the page you have in the browser. Then click on Conitune"

sleep 3

echo "On the screen Customize Jenkins, click on the install suggested plugins box and the installation process will start."

sleep 30

echo "When the installation will be completed, you will get a form to create the First Admin User. Fill out the form"

echo "Username: utrains"

sleep 2

echo "Password: school1"

sleep 2

echo "E-mail address: use your own email address"

sleep 2

echo "On the next page you will need to set the URL for the Jenkins instance. The Jenkins URL field will come with a default value (automatically generated). Just click on Save and Finish"

sleep 3

echo "Jenkins is now ready for use! Click on Start using Jenkins button and you will be automatically redirected to the Jenkins dashboard."

sleep 2

echo "Here you are logged in as the First Admin user you created in the previous step."





