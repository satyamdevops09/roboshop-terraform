help: ## Show this help message
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

dev-init: ## Dev init
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/dev/state.tfvars

dev-plan: ## Dev plan
	terraform plan -var-file=./environments/dev/main.tfvars


dev-apply: dev-init ## Dev apply
	terraform apply -var-file=./environments/dev/main.tfvars -auto-approve -var token=$(token)

dev-destroy: dev-init ## Dev destroy
	terraform destroy -var-file=./environments/dev/main.tfvars -auto-approve -var token=$(token)

prod-init: ## prod init
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/prod/state.tfvars

prod-plan: ## prod plan
	terraform plan -var-file=./environments/prod/main.tfvars


prod-apply: prod-init ## prod apply
	terraform apply -var-file=./environments/prod/main.tfvars -auto-approve -var token=$(token)

prod-destroy: prod-init ## prod destroy
	terraform destroy -var-file=./environments/prod/main.tfvars -auto-approve -var token=$(token)

tools-infra: ## prod tool infra
	git pull
	cd tools ; terraform init ; terraform apply -auto-approve -var token=$(token)


