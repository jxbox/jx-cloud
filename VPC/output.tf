output "vpc_id" {

        value   = huaweicloud_vpc.my_vpc.id
}


output "subnet_id" {
        value   = huaweicloud_vpc_subnet.my_subnet.id
}
