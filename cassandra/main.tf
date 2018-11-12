provider "aws" {
	region = "${var.aws_region}"
}

module "instances_aza" {
 source           = "../modules/ondemand_instance"
 instance_type    = "${var.instance_type}"
 ami_id           = "${var.ami_id}"
 sec_group_id     = "${var.sec_group_id}"
 key_name         = "${var.key_name}"
 name             = "${var.name}"
 num_instances    = "3"
 subnet_id        = "subnet-d8b8"
}

module "instances_azb" {
 source           = "../modules/ondemand_instance"
 instance_type    = "${var.instance_type}"
 ami_id           = "${var.ami_id}"
 sec_group_id     = "${var.sec_group_id}"
 key_name         = "${var.key_name}"
 name             = "${var.name}"
 num_instances    = "3"
 subnet_id        = "subnet-3958"
}
