output "clouddeploy_custom_target_types_id" {
  description = "Map of id values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no id are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "clouddeploy_custom_target_types_annotations" {
  description = "Map of annotations values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no annotations are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "clouddeploy_custom_target_types_create_time" {
  description = "Map of create_time values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no create_time are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "clouddeploy_custom_target_types_custom_actions" {
  description = "Map of custom_actions values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no custom_actions are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => one(v.custom_actions) if v.custom_actions != null && length(v.custom_actions) > 0 }
}
output "clouddeploy_custom_target_types_custom_target_type_id" {
  description = "Map of custom_target_type_id values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no custom_target_type_id are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.custom_target_type_id if v.custom_target_type_id != null && length(v.custom_target_type_id) > 0 }
}
output "clouddeploy_custom_target_types_deletion_policy" {
  description = "Map of deletion_policy values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no deletion_policy are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "clouddeploy_custom_target_types_description" {
  description = "Map of description values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no description are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.description if v.description != null && length(v.description) > 0 }
}
output "clouddeploy_custom_target_types_effective_annotations" {
  description = "Map of effective_annotations values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no effective_annotations are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "clouddeploy_custom_target_types_effective_labels" {
  description = "Map of effective_labels values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no effective_labels are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "clouddeploy_custom_target_types_etag" {
  description = "Map of etag values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no etag are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "clouddeploy_custom_target_types_labels" {
  description = "Map of labels values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no labels are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "clouddeploy_custom_target_types_location" {
  description = "Map of location values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no location are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.location if v.location != null && length(v.location) > 0 }
}
output "clouddeploy_custom_target_types_name" {
  description = "Map of name values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no name are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.name if v.name != null && length(v.name) > 0 }
}
output "clouddeploy_custom_target_types_project" {
  description = "Map of project values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no project are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.project if v.project != null && length(v.project) > 0 }
}
output "clouddeploy_custom_target_types_tasks" {
  description = "Map of tasks values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no tasks are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => one(v.tasks) if v.tasks != null && length(v.tasks) > 0 }
}
output "clouddeploy_custom_target_types_terraform_labels" {
  description = "Map of terraform_labels values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no terraform_labels are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "clouddeploy_custom_target_types_uid" {
  description = "Map of uid values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no uid are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "clouddeploy_custom_target_types_update_time" {
  description = "Map of update_time values across all clouddeploy_custom_target_types, keyed the same as var.clouddeploy_custom_target_types except keys with no update_time are omitted"
  value       = { for k, v in google_clouddeploy_custom_target_type.clouddeploy_custom_target_types : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

