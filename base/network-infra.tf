resource "aws_vpc" "new_VPC" {
  cidr_block = var.newVpc
  tags = {
    Name      = "${var.newVPCName}"
    createdBy = "infra-${var.prefix}"
  }
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.new_VPC.id
  cidr_block        = var.subnetA
  availability_zone = "${var.region}a"
  tags = {
    Name      = "new Subnet A"
    createdBy = "infra-${var.prefix}"
  }
}
resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.new_VPC.id
  cidr_block        = var.subnetB
  availability_zone = "${var.region}b"
  tags = {
    name      = "new Subnet B"
    createdBy = "infra-${var.prefix}"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id            = aws_vpc.new_VPC.id
  cidr_block        = var.subnetC
  availability_zone = "${var.region}c"
  tags = {
    name     = "new subnet C"
    createBy = "infra-${var.prefix}"
  }
}

