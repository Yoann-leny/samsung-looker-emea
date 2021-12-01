# project_name: "block-ga-360-config"
project_name: "samsung_emea_test"

################ Constants ################

constant: PROJECT_NAME {
  value: "samsung-looker-emea"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "01_dl_seuk_gb_ga360_159092699"
  export: override_required
}

constant: GA360_TABLE_NAME {
  value: "ga_sessions_*"
  export: override_required
}

constant: EXPLORE_DATE_FILTER {
  value: "last 7 days"
  export: override_required
}



#comment
