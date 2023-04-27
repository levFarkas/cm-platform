inputs = {
  project_name                  = "car-modelling"
  environment                   = "dev"
  aws_region                    = "eu-west-1"
  s3_bucket_output_models_path  = "car-model-classification-output-models"
  s3_bucket_input_training_path = "car-model-classification-images"
  training_instance_type        = "ml.m5.xlarge"
  inference_instance_type       = "ml.c5.large"
  volume_size_sagemaker         = 5
  runtime                       = "python3.7"
  memory_size                   = "128"
  timeout                       = "200"
}

remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "cm-platform-tfstate-dev-eu-west-1"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

