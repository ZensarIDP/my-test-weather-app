provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_app_engine_application" "app" {
  location_id = var.region
}

resource "google_app_engine_standard_app_version" "app" {
  service     = var.service_name
  version_id  = var.version_id
  runtime     = "nodejs18"
  entrypoint  = "npm start"

  deployment {
    zip {
      source_url = var.source_url
    }
  }

  env_variables = {
    OPENWEATHER_API_KEY = var.openweather_api_key
    NODE_ENV            = var.node_env
    DEFAULT_CITY        = var.default_city
    UNITS               = var.units
  }

  automatic_scaling {
    min_instances = var.min_instances
    max_instances = var.max_instances
  }

  health_check {
    enable_health_check = true
    host                = "localhost"
  }
}