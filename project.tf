/* ----------------------------------------------- */
/*  Create a  GCP Project under an organization    */
/* ----------------------------------------------- */
resource "google_project" "my_project" {
  name       = var.project_name
  project_id = var.project_name
  org_id     = var.organization_id
}