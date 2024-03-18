resource "aws_lambda_function" "my_lambda_function" {
  function_name = "Jenkins-terraform-automation"
  role          = "arn:aws:iam::655625281801:role/LambdaS3Role"
 #handler       = "lambda_function.lambda_handler"  # Specify the handler function in your Docker image

  runtime = "provided.al2"  # Use "provided.al2" for custom runtime like Docker

  image_uri = "655625281801.dkr.ecr.us-east-1.amazonaws.com/terraform-repo:latest"

  package_type = "Image"
}
