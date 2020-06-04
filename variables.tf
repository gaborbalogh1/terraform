variable "instance_count" {
  default = 0
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
