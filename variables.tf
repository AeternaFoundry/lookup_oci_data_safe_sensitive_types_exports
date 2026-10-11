variable "data_safe_sensitive_types_exports_lookup" {
  description = <<EOT
Map of data_safe_sensitive_types_exports_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - display_name
    - sensitive_types_export_id
    - state
    - time_created_greater_than_or_equal_to
    - time_created_less_than
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                        = string
    access_level                          = optional(string)
    compartment_id_in_subtree             = optional(bool)
    display_name                          = optional(string)
    sensitive_types_export_id             = optional(string)
    state                                 = optional(string)
    time_created_greater_than_or_equal_to = optional(string)
    time_created_less_than                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

