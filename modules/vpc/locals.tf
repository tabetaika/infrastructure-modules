locals {
    subnets = [for i in range(0, var.az_num*2): cidrsubnet(var.cidr, 4, i)]
    private_subnets = slice(local.subnets, 0, var.az_num)
    public_subnets  = slice(local.subnets, var.az_num, var.az_num*2)
    availility_zones = slice(data.aws_availability_zones.available.zone_ids, 0, var.az_num)
}

