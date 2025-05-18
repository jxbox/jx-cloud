terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
      version = "1.73.8"
    }
  }
}
provider "huaweicloud" {
  region     = "me-east-1"
  #access_key = "MUDXLHNXB11KBWCV1RGU"
  #secret_key = "RnP4uxQaF8AM9GTYwhE69soWcPF3b3sFHCWfDl6Q"
}