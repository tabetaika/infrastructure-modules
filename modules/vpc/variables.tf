variable "cidr" {}
variable "env_name" {}
variable "tf_path" {}

variable "enable_nat_gateway" {
    default = "false"
}

variable "az_num" {
    default = 3
}