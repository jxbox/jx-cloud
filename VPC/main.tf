resource "huaweicloud_vpc" "my_vpc" {
        name = var.vpc_name
        cidr = var.cidr_block
}
resource "huaweicloud_vpc_subnet" "my_subnet" {
        vpc_id = huaweicloud_vpc.my_vpc.id
        name   = var.subnet_name
        cidr = var.subnet_cidr_block
        gateway_ip        = var.gateway_ip
        availability_zone = var.availability_zone
}
