output "instance_id" {
  description = "ID of the EC2 instance."
  value       = aws_instance.this.id
}

output "instance_private_ip" {
  description = "Private IP address assigned to the instance."
  value       = aws_instance.this.private_ip
}

output "instance_public_ip" {
  description = "Public IP address assigned to the instance, if any."
  value       = aws_instance.this.public_ip
}

output "vpc_id" {
  description = "ID of the default VPC used for the instance."
  value       = data.aws_vpc.default.id
}

output "subnet_id" {
  description = "Subnet ID where the instance was placed."
  value       = aws_instance.this.subnet_id
}
