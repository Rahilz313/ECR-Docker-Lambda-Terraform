# Use the official AWS Lambda Python runtime as the base image
FROM public.ecr.aws/lambda/python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the entire directory (including lambda_function.py) into the container
COPY . ${LAMBDA_TASK_ROOT}

# Specify the Lambda handler function (assuming lambda_function.py contains the handler)
CMD ["lambda_function.lambda_handler"]


