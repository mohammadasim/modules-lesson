variable "cidr_block" {
    description = "the CIDR block for vpc"
    type = string
    default = "10.10.0.0/16"
}

variable "domain_name" {
    description = "the domain name for hosted zone"
    type = string
}