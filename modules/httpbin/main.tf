locals {
  parameters = {
    name                 = var.name
    namespace            = var.namespace
    replicas             = var.replicas
    ports                = var.ports
    enable_service_links = false

    containers = [
      {
        name  = "httpbin"
        image = var.image
        env   = var.env
      },
    ]
  }
}

module "deployment-service" {
  source     = "../../archetypes/deployment-service"
  parameters = merge(local.parameters, var.overrides)
}