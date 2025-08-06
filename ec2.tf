module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.0"

  name = "ubuntu-server"

  ami                    = "ami-0f2e255ec956ade7f" 
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.ssh_security_group.security_group_id]
  associate_public_ip_address = true

  tags = {
    Project = "Demo"
  }
}
