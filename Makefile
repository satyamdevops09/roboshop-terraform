dev-init:
	git pull
	terraform init

dev-plan:
	terraform plan -var-file=./environments/dev/main.tfvars


dev-apply:
	terraform apply -var-file=./environments/dev/main.tfvars

prod-init:
	git pull
	terraform init

prod-plan:
	terraform plan -var-file=./environments/prod/main.tfvars


dev-apply:
	terraform apply -var-file=./environments/prod/main.tfvars


