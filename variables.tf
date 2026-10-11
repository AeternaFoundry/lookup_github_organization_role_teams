variable "organization_role_teams_lookup" {
  description = <<EOT
Map of organization_role_teams_lookup, attributes below
Required:
    - role_id
EOT

  type = map(object({
    role_id = number
  }))
}

