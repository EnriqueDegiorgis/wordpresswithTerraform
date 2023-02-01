
########  AWS ACCESS KEY ########
variable "access_key" {
    type = string
    description = "AWS Access Key"
    default = "your_acces_key"
}

########  AWS SECRET KEY ########
variable "secret_key" {
    type = string
    description = "AWS Secret Key"
    default = "your_secret_key"
}

########  AWS REGION ########
variable "region" {
    type = string
    description = "AWS Region"
    default = "your_desired_region"
}
