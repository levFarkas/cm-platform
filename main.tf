module "car-model-classifier" {
  source                        = "git@github.com:levFarkas/car-model-classification.git?ref=development"
  aws_region                    = var.aws_region
  environment                   = var.environment
  project_name                  = var.project_name
  runtime                       = var.runtime
  timeout                       = var.timeout
  memory_size                   = var.memory_size
  training_instance_type        = var.training_instance_type
  inference_instance_type       = var.inference_instance_type
  volume_size_sagemaker         = var.volume_size_sagemaker
  s3_bucket_input_training_path = var.s3_bucket_input_training_path
  s3_bucket_output_models_path  = "${var.s3_bucket_output_models_path}-${var.environment}"
}

