#Terraform Configuration for AWS EC2 Instance with Docker

#Prerequisites

#Install: 

Terraform 
AWS CLI configured with Administrator access
An AWS account
Install Docker
Docker Hub account


#Clone the Repository

git clone https://yourrepositorylink.com/path/to/repo.git
cd path_to_repo

#Initialize Terraform

Navigate to the directory containing the Terraform configuration files and run:

terraform init

#Generate an execution plan for Terraform:

Navigate to the directory containing the Terraform configuration files and run:

terraform plan

#Apply Terraform Configuration

Apply the Terraform configuration to start the deployment:

terraform apply

#Access the EC2 Instance
Run:

ssh -i /path/to/your_key.pem ec2-user@<EC2_Public_IP>


#Verify Docker Installation
Run:

docker info

#pull docker image from Docker Hub

Once image is made available in Docker Hub and is public or log in to pull it.

Go to your Docker Hub account settings.
Navigate to Security.
Click on New Access Token.
Give the token a description and select the desired access scope.
Use this token as your password when performing docker login.

docker login --username your_username --password your_access_token

docker pull username/repository:tag

#verify that the "Hello World" program

http://<EC2_Public_IP>:80

Replace <EC2_Public_IP> with the actual public IP address of EC2 instance.




