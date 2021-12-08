view: rewards {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_rewards`
    ;;

  dimension: country_cd {
    type: string
    sql: ${TABLE}.country_cd ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.GUID ;;
  }

  dimension: is_customer_reward {
    type: yesno
    sql: "Yes" ;;
  }

  dimension_group: in_out_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.in_out_timestamp ;;
  }

  dimension: point_sum_current {
    type: number
    sql: ${TABLE}.point_sum_current ;;
  }

  dimension_group: point_sum_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.point_sum_timestamp ;;
  }

  dimension: user_status_code {
    type: number
    sql: ${TABLE}.user_status_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
