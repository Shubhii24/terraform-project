data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "public" {
  vpc_id = data.aws_vpc.default.id
}

resource "aws_launch_template" "foobar" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "bar" {
  /*availability_zones = var.availability_zones */
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  vpc_zone_identifier = [data.aws_subnet_ids.public.id] # Use the first public subnet ID of the default VPC
  launch_template {
    id   = aws_launch_template.foobar.id
    version = "$Latest"
  }
}

/*resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = var.security_group_id
  cidr_ipv4         = var.cidr_ipv4
  from_port         = var.from_port
  ip_protocol       = var.ip_protocol
  to_port           = var.to_port
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
  security_group_id = var.security_group_id
  cidr_ipv6         = var.cidr_ipv6
  from_port         = var.from_port
  ip_protocol       = var.ip_protocol
  to_port           = var.to_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = var.security_group_id
  cidr_ipv4         =  var.cidr_ipv4
  ip_protocol       =  var.ip_protocol
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = var.security_group_id
  cidr_ipv6         = var.cidr_ipv4
  ip_protocol       = var.ip_protocol
} */