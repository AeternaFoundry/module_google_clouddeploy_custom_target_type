resource "google_clouddeploy_custom_target_type" "clouddeploy_custom_target_types" {
  for_each = var.clouddeploy_custom_target_types

  location        = each.value.location
  name            = each.value.name
  annotations     = each.value.annotations
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  labels          = each.value.labels
  project         = each.value.project

  dynamic "custom_actions" {
    for_each = each.value.custom_actions != null ? [each.value.custom_actions] : []
    content {
      deploy_action = custom_actions.value.deploy_action
      dynamic "include_skaffold_modules" {
        for_each = custom_actions.value.include_skaffold_modules != null ? custom_actions.value.include_skaffold_modules : []
        content {
          configs = include_skaffold_modules.value.configs
          dynamic "git" {
            for_each = include_skaffold_modules.value.git != null ? [include_skaffold_modules.value.git] : []
            content {
              path = git.value.path
              ref  = git.value.ref
              repo = git.value.repo
            }
          }
          dynamic "google_cloud_build_repo" {
            for_each = include_skaffold_modules.value.google_cloud_build_repo != null ? [include_skaffold_modules.value.google_cloud_build_repo] : []
            content {
              path       = google_cloud_build_repo.value.path
              ref        = google_cloud_build_repo.value.ref
              repository = google_cloud_build_repo.value.repository
            }
          }
          dynamic "google_cloud_storage" {
            for_each = include_skaffold_modules.value.google_cloud_storage != null ? [include_skaffold_modules.value.google_cloud_storage] : []
            content {
              path   = google_cloud_storage.value.path
              source = google_cloud_storage.value.source
            }
          }
        }
      }
      render_action = custom_actions.value.render_action
    }
  }

  dynamic "tasks" {
    for_each = each.value.tasks != null ? [each.value.tasks] : []
    content {
      deploy {
        dynamic "container" {
          for_each = tasks.value.deploy.container != null ? [tasks.value.deploy.container] : []
          content {
            args    = container.value.args
            command = container.value.command
            env     = container.value.env
            image   = container.value.image
          }
        }
      }
      dynamic "render" {
        for_each = tasks.value.render != null ? [tasks.value.render] : []
        content {
          dynamic "container" {
            for_each = render.value.container != null ? [render.value.container] : []
            content {
              args    = container.value.args
              command = container.value.command
              env     = container.value.env
              image   = container.value.image
            }
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

