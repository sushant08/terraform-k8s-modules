variable "name" {}

variable "namespace" {}

variable "image" {
  default = "getsentry/sentry:6e6ed91"
}

variable "replicas" {
  default = 1
}

variable "ports" {
  default = [
    {
      name = "http"
      port = 9000
    },
  ]
}


variable "annotations" {
  default = {}
}

variable "overrides" {
  default = {}
}

variable "env_config_map" {
  default     = {}
  description = "Name of ConfigMap with environment variables"
}

variable "etc_config_map" {
  default     = null
  description = "Name of ConfigMap with /etc/sentry files"
}
