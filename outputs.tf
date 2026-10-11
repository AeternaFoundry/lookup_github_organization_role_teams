output "organization_role_teams_lookup_id" {
  description = "Map of id values across all organization_role_teams_lookup, keyed the same as var.organization_role_teams_lookup"
  value       = { for k, v in data.github_organization_role_teams.organization_role_teams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_role_teams_lookup_role_id" {
  description = "Map of role_id values across all organization_role_teams_lookup, keyed the same as var.organization_role_teams_lookup"
  value       = { for k, v in data.github_organization_role_teams.organization_role_teams_lookup : k => v.role_id if v.role_id != null }
}
output "organization_role_teams_lookup_teams" {
  description = "Map of teams values across all organization_role_teams_lookup, keyed the same as var.organization_role_teams_lookup"
  value       = { for k, v in data.github_organization_role_teams.organization_role_teams_lookup : k => v.teams if v.teams != null && length(v.teams) > 0 }
}

