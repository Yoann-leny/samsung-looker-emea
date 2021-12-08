view: email_flag {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_email_flag`
    ;;

  dimension: clicked_current_month {
    type: yesno
    sql: ${TABLE}.Clicked_current_month ;;
  }

  dimension: clicked_last_2_months {
    type: yesno
    sql: ${TABLE}.Clicked_last_2_months ;;
  }

  dimension: clicked_last_6_months {
    type: yesno
    sql: ${TABLE}.Clicked_last_6_months ;;
  }

  dimension: clicked_last_month {
    type: yesno
    sql: ${TABLE}.Clicked_last_month ;;
  }

  dimension: d_customer_key {
    type: string
    sql: CAST(${TABLE}.d_customer_key AS INT64) ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension_group: max_clicked {
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
    sql: ${TABLE}.max_clicked ;;
  }

  dimension_group: max_opened {
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
    sql: ${TABLE}.max_opened ;;
  }

  dimension: opened_current_month {
    type: yesno
    sql: ${TABLE}.Opened_current_month ;;
  }

  dimension: opened_last_2_months {
    type: yesno
    sql: ${TABLE}.Opened_last_2_months ;;
  }

  dimension: opened_last_6_months {
    type: yesno
    sql: ${TABLE}.Opened_last_6_months ;;
  }

  dimension: opened_last_month {
    type: yesno
    sql: ${TABLE}.Opened_last_month ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
