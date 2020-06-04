project_name: "block-hubspot-marketing"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-hubspot-marketing-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "brick-layer"
  export: override_required
}

constant: DATASET_NAME {
  value: "hubspot_jeffty"
  export: override_required
}

################ Dependencies ################


local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: DATASET_NAME {
    value: "@{DATASET_NAME}"
  }
}
