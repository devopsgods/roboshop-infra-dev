data "aws_instance" "terraform_instance" {
  instance_id = "i-05b00268853108069"
  }

  data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.environment}/vpc_id"
}