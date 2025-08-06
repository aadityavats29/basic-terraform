module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.0"

  name = "simple-vpc"
  cidr = "10.10.0.0/16"

  azs             = ["ap-south-1a"]
  public_subnets  = ["10.10.1.0/24"]

  enable_nat_gateway   = false
  enable_dns_hostnames = true
  single_nat_gateway   = false
  enable_dhcp_options  = false
  tags = {
    Project = "Demo"
  }
}
