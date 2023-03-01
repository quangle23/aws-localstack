## Requirements
- python (Python 3.7 up to 3.11 supported)
- pip (Python package manager)
- Docker
- terraform
- awscli

## Run localstack:
```
docker-compose up
```

Update aws configure

```
aws configure --profile localstack
----------------------------------
AWS Access Key ID [****************User]: testUser
AWS Secret Access Key [****************sKey]: testAccessKey
Default region name [ap-southeast-1]: ap-southeast-1
Default output format [json]: json
```
Switch aws profile
```
export AWS_PROFILE=localstack
```

## Run terraform:

```
$ cd terraform
$ terraform init
$ terraform plan
$ terraform apply -auto-approve
```

## Check the localstack resource
s3
```
aws --endpoint-url=http://localhost:4566 --region=ap-southeast-1 --profile=localstack s3 l
```
dynamodb

```
aws --endpoint-url=http://localhost:4566 --region=ap-southeast-1 --profile=localstack dynamodb list-tables
```