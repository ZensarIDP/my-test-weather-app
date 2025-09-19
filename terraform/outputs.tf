output "app_url" {
  description = "The URL of the deployed App Engine application"
  value       = "https://${google_app_engine_application.app.default_hostname}"
}