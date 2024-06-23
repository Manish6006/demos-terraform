provider "aws" {
        region = "${var.region}"
}
variable "prefix" {
        type=string
        default = "devops-tech"
}

variable "ami-id" {
        type=string
        description="this id of the ami to use to create ec2 instance"
        default="ami-022ce6f32988af5fa"
}

variable "instance_type" {
        type=string
        description="this is define the instance type"
        default="t2.micro"
}

variable "tags" {
        type=string
        description="this is define the tag to attached with ec2"
        default="ec2FromTerraform"
}

variable "region" {
        type=string
        description="define the region to launch the instance"
        default="ap-south-1"
}

