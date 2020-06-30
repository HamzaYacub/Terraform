resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gw_id
  }

}

resource "aws_route_table_association" "rta" {
  route_table_id = "${aws_route_table.rt.id}"
  subnet_id      = var.sn_id
}