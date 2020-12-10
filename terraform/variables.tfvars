#provider variables
region = "eu-north-1"

#instance variables
image_id = "ami-0a3a4169ad7cb0d77" # Ubuntu Server 20.04 LTS (HVM), SSD Volume Type
instance_type = "t3.micro"
security_groups = ["ssh-22-only"]
key_name = "my-ssh-key"
instance_name = "hello_var_instance"