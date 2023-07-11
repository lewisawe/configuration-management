resource "aws_vpc" "app_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "app-vpc"
  }
}

resource "aws_subnet" "app_sbnt" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a" 
  map_public_ip_on_launch = true
  tags = {
    Name = "app-sbnt"
  }
}


resource "aws_internet_gateway" "app_igw" {
  vpc_id = aws_vpc.app_vpc.id
  tags = {
    Name = "app-igw"
  }
}


resource "aws_route_table" "app_route_table" {
  vpc_id = aws_vpc.app_vpc.id
  tags = {
    Name = "app-route-table"
  }
}


resource "aws_route" "app_route" {
  route_table_id         = aws_route_table.app_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.app_igw.id
}


resource "aws_network_acl" "app_network_acl" {
  vpc_id = aws_vpc.app_vpc.id
  tags = {
    Name = "app-network-acl"
  }
}


resource "aws_network_acl_rule" "app_network_acl_rule" {
  network_acl_id = aws_network_acl.app_network_acl.id
  rule_number    = 100
  egress         = false
  protocol       = "6" # TCP
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 80
  to_port        = 80
}


resource "aws_route_table_association" "app_route_table_association" {
  subnet_id      = aws_subnet.app_subnet.id
  route_table_id = aws_route_table.app_route_table.id
}
