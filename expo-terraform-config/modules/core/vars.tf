
variable "region" {
    description = "AWS region"
    default = "us-east-1"
}

# establish environment - staging enviroment set as default
variable "env" {default = "stage"}

# default EC2 instance type by environment
variable "instance_type" {
    type = "map" {
        default = {
            stage = "t2.micro"
            prod = "t2.large"
        }
    }
}