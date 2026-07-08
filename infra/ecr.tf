locals {
  # ecr_repo= ["flask", "redis", "nginx"]

  ecr_repo= {
    flask = "flask"
    redis = "redis"
    nginx = "nginx"
  }
  

}

# for_each works with maps {} and set [] list of unique value

resource "aws_ecr_repository" "python_app" {
  for_each = local.ecr_repo
  name = "${var.environment}-${var.app_name}-${each.value}"
  force_delete = true
}


