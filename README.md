# Terraform-demo-OCI
Simple demo deployment on oracle cloud provider

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white) ![OCI Cloud](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=black) 

```bash
# .env
export TF_VAR_fingerprint=
export TF_VAR_private_key_path=
export TF_VAR_region=
export TF_VAR_tenancy_ocid=
export TF_VAR_user_ocid=
source ~/.bash_profile
terraform init
terraform plan -var-file="envs/dev/dev.tfvars"
terraform apply -var-file="envs/dev/dev.tfvars"
```