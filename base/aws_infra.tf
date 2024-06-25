data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["amazon"] #amazon
}

#ec2instance creation
resource "aws_instance" "ec2FromTerraform" {
  ami                         = data.aws_ami.amazon_linux_2.id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  availability_zone           = "${var.region}b"
  tags = {
    Name = "${var.tags}"
  }

  vpc_security_group_ids = ["${aws_security_group.ssh_access.id}"]
}

#security group
resource "aws_security_group" "ssh_access" {
  vpc_id      = var.vpc_Id[0]
  name        = var.securityGroupName
  description = "${var.securityGroupName}-${var.prefix}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ingressCIDRs}"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.securityGroupName}"
    BA   = "${var.prefix}"
  }
}

