/* ----------------------------------------------- */
/*  Enable APIs in the project                     */
/* ----------------------------------------------- */
resource "google_project_service" "gcp_services" {
  for_each = toset(var.api_name)
  project = var.project_name
  service = each.key
  depends_on = [google_project.my_project]
}