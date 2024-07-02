resource "aws_key_pair" "my_key" {
  key_name   = "my_key_pair"
  public_key = file("<PathToFile>/my-new-key.pub")
}
