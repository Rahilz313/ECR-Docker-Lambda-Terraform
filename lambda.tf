resource "aws_lambda_function" "my_lambda_function" {
  function_name = "Jenkins-terraform-automation"
  role          = "arn:aws:iam::655625281801:role/LambdaS3Role"
 

 

  image_uri = "655625281801.dkr.ecr.us-east-1.amazonaws.com/terraform-repo:latest"

  package_type = "Image"
}
