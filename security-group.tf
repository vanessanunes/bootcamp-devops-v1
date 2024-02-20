resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Permitir acesso remoto via porta 22 (ssh)"
#   vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ingress" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Permitir acesso remoto via porta 80 (http)"
#   vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_http"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_ingress" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_security_group" "allow_egress" {
  name        = "allow_egress"
  description = "Permitir egress"
#   vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_egress"
  }
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_egress.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
