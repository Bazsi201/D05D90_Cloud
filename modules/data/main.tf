data "local_file" "file_data" {
  filename = var.file_path
}

output "file_id" {
  value = data.local_file.file_data.id
}
