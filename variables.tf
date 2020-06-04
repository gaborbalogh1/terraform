variable "instance_count" {
  default = 1
}

variable "key_name" {
  description = "Jenkins"
  default     = "Jenkins"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t3.small"
}

variable "ami" {
  description = "Base AMI to launch the instances"

  # Community NGINX AMI
  default = "ami-032598fcc7e9d1c7a"
}

variable "region"{
	default = "eu-west-2"
}

#add elestic ip to new ami default instance
data "aws_eip" "by_allocation_id" {
  id = "eipalloc-07ee242e2adb649f2"
}
