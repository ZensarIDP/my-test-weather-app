// Output values

output "app_engine_url" {
  description = "The URL of the deployed App Engine service"
  value       = "https://${google_app_engine_application.app.project}.appspot.com"
}