output "fsx_whitelist_prefix_list_id" {
  description = "The ID of the created prefix list"
  value       = module.fsx_whitelist_prefix_list.prefix_list_id
}