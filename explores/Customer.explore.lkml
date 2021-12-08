include: "/views/**/*.*"

explore: hybris_registration {
  label: "Customer Dashboard"
  join: customerdata {

    type: full_outer
    sql_on: ${hybris_registration.d_customer_key} = ${customerdata.d_customer_key} ;;
    relationship: many_to_one
  }
  join: propensitymodels {
    type: left_outer
    sql_on: ${customerdata.d_customer_key} = ${propensitymodels.d_customer_key} ;;
    relationship: one_to_one
  }
  join: samsung_service {
    type: left_outer
    sql_on: ${customerdata.d_customer_key} = ${samsung_service.d_customer_key}  ;;
    relationship: one_to_one
  }
  join: rewards {
    type: left_outer
    sql_on: ${customerdata.guid} = ${rewards.guid}  ;;
    relationship: one_to_many
  }
}
