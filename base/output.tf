output "fqdn-ec2"{

        value=aws_instance.ec2FromTerraform.public_dns
}

output "publicIP" {
        value=aws_instance.ec2FromTerraform.public_ip
}


output "privateIP" {
        value=aws_instance.ec2FromTerraform.private_ip
}

output "aZone" {
        value=aws_instance.ec2FromTerraform.subnet_id
}

output "avzzonwe" {
        value=aws_instance.ec2FromTerraform.availability_zone
}

