variable "vpc_name" {

        default = "my_vpc22"

}
variable "cidr_block" {
        type        = string
        description = "test"
        default     = "192.168.0.0/16"

}

variable "subnet_name" {

        default = "my_subnet22"

}

variable "subnet_cidr_block" {
        type        = string
        description = "test subnet"
        default     = "192.168.1.0/24"
}

variable "availability_zone" {
        type        = string
        default  =  "me-east-1"
}
variable "gateway_ip" {
        type        = string
        description = "test subnet"
        default     = "192.168.1.1"
}
