variable "myuuid" {

        default = "test"

}

data "huaweicloud_vpc_subnet" "my_subnet" {
  name = "subnet-ecs"
}
data "huaweicloud_networking_secgroup" "mysecgroup" {
  name = "web-mxd-sa-test-dev"
}
data "huaweicloud_availability_zones" "myaz" {}

data "huaweicloud_compute_flavors" "myflavor" {
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  performance_type  = "normal"
  cpu_core_count    = 2
  memory_size       = 4
}


data "huaweicloud_images_image" "myimage" {
  name        = "Ubuntu 18.04 server 64bit"
  most_recent = true
}

resource "huaweicloud_compute_instance" "basic" {
  name               = "basic"
  image_id           = data.huaweicloud_images_image.myimage.id
  flavor_id          = data.huaweicloud_compute_flavors.myflavor.ids[0]
  security_group_ids = [data.huaweicloud_networking_secgroup.mysecgroup.id]
  availability_zone  = data.huaweicloud_availability_zones.myaz.names[0]
  depends_on         = []
  network {
  uuid = data.huaweicloud_vpc_subnet.my_subnet.id
  }
}