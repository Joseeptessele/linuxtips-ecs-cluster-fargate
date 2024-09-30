### GENERAL CONFIGS ###
variable "project_name" {
  description = "project name"
  type        = string
}

variable "region" {
  description = "region"
  type        = string
}

### SSM VPC ###

variable "ssm_vpc_id" {
  description = "vpc id"
  type        = string
}

variable "ssm_public_subnet_a" {
  description = "public subnet id at us-east-1a"
  type        = string
}

variable "ssm_public_subnet_b" {
  description = "public subnet id at us-east-1b"
  type        = string
}

variable "ssm_public_subnet_c" {
  description = "public subnet id at us-east-1c"
  type        = string
}

variable "ssm_private_subnet_a" {
  description = "private subnet id at us-east-1a"
  type        = string
}

variable "ssm_private_subnet_b" {
  description = "private subnet id at us-east-1b"
  type        = string
}

variable "ssm_private_subnet_c" {
  description = "private subnet id at us-east-1c"
  type        = string
}

### BALANCER ###
variable "load_balancer_internal" {
  description = "indicates if the load balancer is public or not"
  type        = bool
}

variable "load_balancer_type" {
  description = "load balancer type"
  type        = string
}

### ECS GENERAL ###
variable "nodes_ami" {
  description = "AMI being used by the cluster"
  type        = string
}

variable "node_instance_type" {
  description = "set machine size"
  type        = string
}

variable "node_volume_size" {
  description = "volume size (GiB) used by ECS nodes"
  type        = number
}

variable "node_volume_type" {
  description = "EBS volume used by ECS nodes"
  type        = string
}

variable "cluster_on_demand_min_size" {
  description = "cluster minimum size for on demand instances"
  type        = number
}

variable "cluster_on_demand_max_size" {
  description = "cluster maximum size for on demand instances"
  type        = number
}

variable "cluster_on_demand_desired_size" {
  description = "cluster desired size for on demand instances"
  type        = number
}

variable "cluster_spot_min_size" {
  description = "cluster minimum size for spot instances"
  type        = number
}

variable "cluster_spot_max_size" {
  description = "cluster maximum size for spot instances"
  type        = number
}

variable "cluster_spot_desired_size" {
  description = "cluster desired size for spot instances"
  type        = number
}

variable "capacity_providers" {
  type = list
  default = [
    "FARGATE", "FARGATE_SPOT"
  ]
}