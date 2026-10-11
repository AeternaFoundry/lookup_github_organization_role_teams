data "github_organization_role_teams" "organization_role_teams_lookup" {
  for_each = var.organization_role_teams_lookup

  role_id = each.value.role_id
}

