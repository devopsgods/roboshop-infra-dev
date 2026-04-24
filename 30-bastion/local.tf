locals {
    ami_id = data.aws.ami.Devops.id
    common_tags = {
    project = var.project
    enviornment= var.enviornment
    terraform = "true"
}
    public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
    bastion_sg_id = data.aws_ssm_parameter.bastian_sg_id.value
}