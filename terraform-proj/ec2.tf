resource "aws_instance" "my_ec2" {
  ami           = "ami-0195204d5dce06d99"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.my_key.key_name  // Make sure your SSH key is correctly specified

  // This user_data script installs Docker
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install -y docker
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo usermod -aG docker ec2-user
              EOF

  // Associate the security group
  security_groups = [aws_security_group.my_sg.name]

  tags = {
    Name = "AWSEC2InstanceTerraform"
  }
}


