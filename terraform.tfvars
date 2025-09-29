aws_region = "us-east-1"
name = "my-tws-eks"
vpc_cidr = "10.0.0.0/16"
azs             = ["us-east-1a", "us-east-1b" ]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24" ]
public_subnets  = ["10.0.11.0/24", "10.0.12.0/24" ]
intra_subnets  = ["10.0.21.0/24", "10.0.22.0/24" ]
instance_types = ["t3.small"]
