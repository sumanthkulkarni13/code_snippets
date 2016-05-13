// ICMP echo request.
resource "aws_network_acl_rule" "rule_10" {
    network_acl_id = "${var.network_acl_id}"

    rule_number = 10
    rule_action = "allow"

    protocol   = "icmp"
    cidr_block = "${var.vpc_cidr_block}"

    icmp_type = 8
    icmp_code = -1
}

// ICMP echo reply.
resource "aws_network_acl_rule" "rule_11" {
    network_acl_id = "${var.network_acl_id}"

    rule_number = 11
    rule_action = "allow"

    protocol   = "icmp"
    cidr_block = "${var.vpc_cidr_block}"

    icmp_type = 0
    icmp_code = -1
}

// ICMP destination unreachable response.
resource "aws_network_acl_rule" "rule_12" {
    network_acl_id = "${var.network_acl_id}"

    rule_number = 12
    rule_action = "allow"

    protocol   = "icmp"
    cidr_block = "${var.vpc_cidr_block}"

    icmp_type = 3
    icmp_code = -1
}

// ICMP source quench response.
resource "aws_network_acl_rule" "rule_13" {
    network_acl_id = "${var.network_acl_id}"

    rule_number = 13
    rule_action = "allow"

    protocol   = "icmp"
    cidr_block = "${var.vpc_cidr_block}"

    icmp_type = 4
    icmp_code = -1
}

// ICMP time exceeded response.
resource "aws_network_acl_rule" "rule_14" {
    network_acl_id = "${var.network_acl_id}"

    rule_number = 14
    rule_action = "allow"

    protocol   = "icmp"
    cidr_block = "${var.vpc_cidr_block}"

    icmp_type = 11
    icmp_code = -1
}
