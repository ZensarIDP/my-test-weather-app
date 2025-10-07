// Variable definitions

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region for the App Engine"
  type        = string
  default     = "us-central"
}

variable "service_name" {
  description = "The name of the App Engine service"
  type        = string
  default     = "default"
}

variable "version_id" {
  description = "The version ID for the App Engine deployment"
  type        = string
  default     = "v1"
}

variable "openweather_api_key" {
  description = "API key for OpenWeatherMap"
  type        = string
}

variable "node_env" {
  description = "Node environment"
  type        = string
  default     = "production"
}

variable "default_city" {
  description = "Default city for weather data"
  type        = string
  default     = "London"
}

variable "units" {
  description = "Units for weather data"
  type        = string
  default     = "metric"
}

variable "min_instances" {
  description = "Minimum number of instances for scaling"
  type        = number
  default     = 1
}

variable "max_instances" {
  description = "Maximum number of instances for scaling"
  type        = number
  default     = 5
}