variable "name" {}

variable "namespace" {
  default = null
}

variable "replicas" {
  default = 1
}

variable "ports" {
  default = [
    {
      name = "http"
      port = 7500
    },
  ]
}

variable "image" {
  default = "samtecspg/articulate-api:0.29.0"
}

variable "env" {
  default = []
}

variable "overrides" {
  default = {}
}

variable "elasticsearch" {}