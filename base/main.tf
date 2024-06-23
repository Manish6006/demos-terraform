data "aws_ami" "amazon_linux_2" {
 most_recent = true

 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }

 filter {
   name = "architecture"
   values = ["x86_64"]
 }

 owners = ["amazon"] #amazon
}
resource "aws_instance" "ec2FromTerraform" {
        ami = "${data.aws_ami.amazon_linux_2.id}"
        instance_type="${var.instance_type}"
        associate_public_ip_address = true
        availability_zone="${var.region}b"
        tags ={
                Name="${var.tags}"
        }
}


