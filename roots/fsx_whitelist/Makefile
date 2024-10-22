get_root_account_id:
	echo "Fetching the root account ID from AWS Organizations..."
	$(eval ROOT_ACCOUNT_ID := $(shell aws organizations describe-organization --query 'Organization.MasterAccountId' --output text))
	echo "Root Account ID: $(ROOT_ACCOUNT_ID)"

terraform_apply: get_root_account_id
	echo "Running terraform apply with the root account ID..."
	TF_VAR_management_account_id=$(ROOT_ACCOUNT_ID) terraform apply -var-file=${VAR_FILE} 

terraform_destroy: get_root_account_id
	echo "Running terraform apply with the root account ID..."
	TF_VAR_management_account_id=$(ROOT_ACCOUNT_ID) terraform destroy -var-file=${VAR_FILE}
