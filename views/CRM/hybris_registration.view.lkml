view: hybris_registration {
  sql_table_name: `@{PROJECT_NAME}.024_tr_seuk_crm.024_tr_seuk_hybris_registration`
    ;;

  measure: amount {
    type: sum
    sql: ${TABLE}.amount ;;
  }

  dimension: category1_code {
    type: string
    sql: ${TABLE}.Category1Code ;;
  }

  dimension: category1_name {
    type: string
    sql: ${TABLE}.Category1Name ;;
  }

  dimension: category2_code {
    type: string
    sql: ${TABLE}.Category2Code ;;
  }

  dimension: category2_name {
    type: string
    sql: ${TABLE}.Category2Name ;;
  }

  dimension: category3_code {
    type: string
    sql: ${TABLE}.Category3Code ;;
  }

  dimension: category3_name {
    type: string
    sql: ${TABLE}.Category3Name ;;
  }

  dimension: d_customer_key {
    type: string
    sql: ${TABLE}.d_customer_key ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }

  dimension: marketing_name {
    type: string
    sql: ${TABLE}.MarketingName ;;
  }

  dimension: model_code {
    type: string
    sql: ${TABLE}.ModelCode ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: purchase_source {
    type: string
    sql: ${TABLE}.purchase_source ;;
  }

  measure: quantity {
    type: sum
    sql: ${TABLE}.quantity ;;
  }

  measure: count {
    type: count
    drill_fields: [category1_name, marketing_name, category3_name, category2_name]
  }
}
