module "files" {
  source  = "./modules/files"
  content = "test"
  name    = "name"
}

module "read" {
  source        = "./modules/read"
  input_variable = module.files.file_content_md5
}

variable "answer_1" {}
variable "answer_2" {}
variable "answer_3" {}
variable "answer_4" {}
variable "answer_5" {}

module "write" {
  source = "./modules/write"

  answer_1 = var.answer_1
  answer_2 = var.answer_2
  answer_3 = var.answer_3
  answer_4 = var.answer_4
  answer_5 = var.answer_5
}

locals {
  answers = module.write.all_answers
}

output "all_answers" {
  value = local.answers
}
