variable "instance_count" {
  default = 1
}

variable "key_name" {
  description = "Test"
  default     = "terraform"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t3.small"
}

variable "ami" {
  description = "Base AMI to launch the instances"

  # Community NGINX AMI
  default = "ami-0330ffc12d7224386"
}

variable "region"{
	default = "eu-west-2"
}

#comment
