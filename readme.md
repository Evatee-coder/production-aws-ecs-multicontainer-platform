# ecs infra for 3 services running together

# On dev terminal

terraform init -backend-config=vars/dev.tfbackend

terraform plan -var-file=vars/dev.tfvars

terraform apply -var-file=vars/dev.tfvars

# To destroy dev

terraform destroy -var-file=vars/dev.tfvars

# On prod Terminal

terraform init -backend-config=vars/prod.tfbackend

terraform plan -var-file=vars/prod.tfvars

terraform apply -var-file=vars/prod.tfvars