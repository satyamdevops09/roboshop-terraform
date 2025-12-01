dev-init:
      terraform init

dev-plan:
     terraform plan -var-file=environments/dev/main.tfvars

dev-apply:
     terraform apply -var-file=environments/dev/main.tfvars



