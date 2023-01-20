#Configure S3 bucket as static website with the below steps:
Step1: Create a bucket
Step2: Enable static website hosting
Step3: Make bucket contents as public, attach the policy
Step4: configure index.html, error.html documents

commands to deply:
terraform init
terraform plan
terraform apply

## when running apply provide varible
terraform apply
var.project_name
  Enter a value: devopsproj
var.region
  Enter a value: us-east-1
var.stage
  Enter a value: terraform

### •Your web site should be accessible to the public internet.
Go to Amazon S3 > Buckets >venkateshmywebsite-bucket >index.html

copy url its allowed public

letter we will migrate with domain name route 53


