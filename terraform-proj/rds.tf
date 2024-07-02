resource "aws_db_instance" "my_rds" {
  instance_class   = "db.t3.micro"
  allocated_storage = 20
  engine            = "postgres"
  username          = "admindb"
  password          = "securepassword"
  db_name           = "mydatabase"
}
