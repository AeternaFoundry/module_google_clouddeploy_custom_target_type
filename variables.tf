variable "clouddeploy_custom_target_types" {
  description = <<EOT
Map of clouddeploy_custom_target_types, attributes below
Required:
    - location
    - name
Optional:
    - annotations
    - deletion_policy
    - description
    - labels
    - project
    - custom_actions (block):
        - deploy_action (required)
        - include_skaffold_modules (optional, block):
            - configs (optional)
            - git (optional, block):
                - path (optional)
                - ref (optional)
                - repo (required)
            - google_cloud_build_repo (optional, block):
                - path (optional)
                - ref (optional)
                - repository (required)
            - google_cloud_storage (optional, block):
                - path (optional)
                - source (required)
        - render_action (optional)
    - tasks (block):
        - deploy (required, block):
            - container (optional, block):
                - args (optional)
                - command (optional)
                - env (optional)
                - image (required)
        - render (optional, block):
            - container (optional, block):
                - args (optional)
                - command (optional)
                - env (optional)
                - image (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    annotations     = optional(map(string))
    deletion_policy = optional(string)
    description     = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    custom_actions = optional(object({
      deploy_action = string
      include_skaffold_modules = optional(list(object({
        configs = optional(list(string))
        git = optional(object({
          path = optional(string)
          ref  = optional(string)
          repo = string
        }))
        google_cloud_build_repo = optional(object({
          path       = optional(string)
          ref        = optional(string)
          repository = string
        }))
        google_cloud_storage = optional(object({
          path   = optional(string)
          source = string
        }))
      })))
      render_action = optional(string)
    }))
    tasks = optional(object({
      deploy = object({
        container = optional(object({
          args    = optional(list(string))
          command = optional(list(string))
          env     = optional(map(string))
          image   = string
        }))
      })
      render = optional(object({
        container = optional(object({
          args    = optional(list(string))
          command = optional(list(string))
          env     = optional(map(string))
          image   = string
        }))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

