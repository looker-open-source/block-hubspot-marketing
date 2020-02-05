project_name: "block-hubspot-marketing"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-hubspot-marketing-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "looker_app"
  export: override_required
}

constant: SCHEMA_NAME {
  value: ""
  export: override_required
}

################ Dependencies ################


local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }
}
