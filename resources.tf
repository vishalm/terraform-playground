resource "aws_vpc" "enviorment-example-two" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name = "terraform-aws-vpc-example-two"
    }
}

resource "aws_subnet" "subnet1" {
    cidr_block = "${cidrsubnet(aws_vpc.enviorment-example-two.cidr_block,3,1)}"
    vpc_id = "${aws_vpc.enviorment-example-two.id}"
    availability_zone = "us-west-2a"
}


resource "aws_subnet" "subnet2" {
    cidr_block = "${cidrsubnet(aws_vpc.enviorment-example-two.cidr_block,2,2)}"
    vpc_id = "${aws_vpc.enviorment-example-two.id}"
    availability_zone = "us-west-2b"
}

resource "aws_security_group" "subnetsecurity" {
    vpc_id = "${aws_vpc.enviorment-example-two.id}"
    # Configure a new service to be monitored by an Icinga2 Server
   ingress {
       cidr_blocks = ["${aws_vpc.enviorment-example-two.cidr_block}"]
       from_port = 80
       to_port = 80
       protocol = "tcp"
   }
}