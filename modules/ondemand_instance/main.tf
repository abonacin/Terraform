resource "aws_spot_fleet_request" "instances" {
  iam_fleet_role  = "arn:aws:iam::accountid:role/aws-ec2-spot-fleet-tagging-role"
  #spot_price      = "0.05"
  target_capacity = "${var.num_instances}"
  valid_until     = "2018-11-13T18:00:00Z"
  terminate_instances_with_expiration = true
  allocation_strategy = "diversified"


  launch_specification {
    instance_type     = "${var.instance_type}"
    ami               = "${var.ami_id}"
    key_name          = "${var.key_name}"
    #availability_zone = "${var.az}"
    subnet_id         = "${var.subnet_id}"

    vpc_security_group_ids = ["${var.sec_group_id}"]

    associate_public_ip_address = true
    root_block_device {
      volume_size           = "8"
      volume_type           = "gp2"
      delete_on_termination = true
    }

    tags {
      Name = "${var.name}"
    }

  }

}
