project_name = "linuxtips-ecs-cluster"
region       = "us-east-1"

### SSM VPC PARAMETERS ###

ssm_vpc_id           = "/linuxtips-vpc/vpc/vpc_id"
ssm_public_subnet_a  = "/linuxtips-vpc/vpc/subnet_public_1a"
ssm_public_subnet_b  = "/linuxtips-vpc/vpc/subnet_public_1b"
ssm_public_subnet_c  = "/linuxtips-vpc/vpc/subnet_public_1c"
ssm_private_subnet_a = "/linuxtips-vpc/vpc/subnet_private_1a"
ssm_private_subnet_b = "/linuxtips-vpc/vpc/subnet_private_1b"
ssm_private_subnet_c = "/linuxtips-vpc/vpc/subnet_private_1c"

### BALANCER ###

load_balancer_internal = "false"
load_balancer_type     = "application"

## ECS GENERAL ###

nodes_ami                      = "ami-0a5f593ecaa0f722d"
node_instance_type             = "t3a.large"
node_volume_size               = "50"
node_volume_type               = "gp3"
cluster_on_demand_min_size     = 2
cluster_on_demand_max_size     = 4
cluster_on_demand_desired_size = 3