variable "project"{
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}



variable "vpc_id" {
  type        = string
  
}

variable "sg_name" {
    type = list(string)
    default = [
        "mongodb", "redis", "mysql", "rabbitmq",
        "catalogue", "user", "cart", "shipping", "payment",
        "backend_alb",
        "frontend",
        "frontend_alb",
        "bastion"
    ]
}