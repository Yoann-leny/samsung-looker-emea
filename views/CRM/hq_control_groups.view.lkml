view: hq_control_groups {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_hq_control_groups`
    ;;

  dimension: control_group_year {
    type: number
    sql: ${TABLE}.control_group_year ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: countrycode {
    type: string
    sql: ${TABLE}.countrycode ;;
  }

  dimension: d_customer_key {
    type: string
    sql: CAST(${TABLE}.d_customer_key AS INT64) ;;
  }

  dimension: device_1 {
    type: string
    sql: ${TABLE}.device_1 ;;
  }

  dimension: device_2 {
    type: string
    sql: ${TABLE}.device_2 ;;
  }

  dimension: device_3 {
    type: string
    sql: ${TABLE}.device_3 ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.GUID ;;
  }

  dimension: hq_segment {
    type: string
    sql: ${TABLE}.hq_segment ;;
  }

  dimension: hq_segment_2 {
    type: string
    sql: ${TABLE}.hq_segment_2 ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.other ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }

  dimension: recipient_id {
    type: string
    sql: ${TABLE}.recipient_id ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension_group: row_create {
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
    sql: ${TABLE}.row_create_date ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.subsidiary ;;
  }

  dimension: suid {
    type: string
    sql: ${TABLE}.suid ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
