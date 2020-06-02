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

  # Bitnami NGINX AMI
  default = "ami-021acbdb89706aa89"
}

variable "region"{
	default = "eu-west-2"
}

variable "access_key"{
	type = string
    default = "AKIAQ7AUKM66C3ERNJIZ"
}

variable "secret_key"{
	type = string
    default = "9/Q1TOttExu06LGGfmw4sJTFPEWUo4mL9Fs7kt4I"
}
