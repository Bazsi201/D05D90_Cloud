module "files" {
  source  = "./modules/files"
  content = "test"
  name    = "name"
}

module "read" {
  source        = "./modules/read"
  input_variable = module.files.file_content_md5
}