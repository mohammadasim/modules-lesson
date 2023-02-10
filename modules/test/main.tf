resource "aws_vpc" "main" {
    cidr_block =  var.cidr_block
}

resource "aws_route53_zone" "public" {
    name = var.domain_name
    comment = "the public hosted zone"
}

resource "aws_route53_zone" "private" {
    name = var.domain_name
    comment = "the private hosted zone"
    vpc {
        vpc_id = aws_vpc.main.id
    }
} 