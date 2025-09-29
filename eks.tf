module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.1"

  cluster_name                   = "${var.name}-cluster"
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  # EKS Managed Node Group(s)

  eks_managed_node_group_defaults = {

    instance_types = var.instance_types

    attach_cluster_primary_security_group = true

  }
  eks_managed_node_groups = {

    my-eks-ng = {
      min_size     = 2
      max_size     = 3
      desired_size = 2

      instance_types = var.instance_types
      capacity_type  = "SPOT"
    }
  }

  tags = "${var.name}-cluster"
}
