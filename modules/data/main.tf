locals {
  generated_file_path = var.generated_file_path
}

data "local_file" "generated_file" {
  filename = local.generated_file_path
}



