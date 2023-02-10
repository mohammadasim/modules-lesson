output "vpc_id" {
    description = "vpc id"
    value = aws_vpc.main.id
}

output "public_zone_id" {
    value = aws_route53_zone.public.id
}

output "private_zone_id" {
    value = aws_route53_zone.private.id
}