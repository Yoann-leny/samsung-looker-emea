view: smartthings {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_smartthings`
    ;;

  dimension: d_customer_key {
    type: string
    sql: CAST(${TABLE}.d_customer_key AS INT64) ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: smart_thing_ce_air_dresser_steam_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_air_dresser_steam_count ;;
  }

  dimension: smart_thing_ce_air_purifier_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_air_purifier_count ;;
  }

  dimension: smart_thing_ce_airconditioner_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_airconditioner_count ;;
  }

  dimension: smart_thing_ce_cooktop_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_cooktop_count ;;
  }

  dimension: smart_thing_ce_dryer_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_dryer_count ;;
  }

  dimension: smart_thing_ce_network_audio_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_network_audio_count ;;
  }

  dimension: smart_thing_ce_oven_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_oven_count ;;
  }

  dimension: smart_thing_ce_refridgerator_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_refridgerator_count ;;
  }

  dimension: smart_thing_ce_robot_cleaner_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_robot_cleaner_count ;;
  }

  dimension: smart_thing_ce_wash_machine_count {
    type: number
    sql: ${TABLE}.smart_thing_ce_wash_machine_count ;;
  }

  dimension: smart_thing_dish_washer_count {
    type: number
    sql: ${TABLE}.smart_thing_dish_washer_count ;;
  }

  dimension: smart_thing_mnfc_c_brand_device_count {
    type: number
    sql: ${TABLE}.smart_thing_mnfc_c_brand_device_count ;;
  }

  dimension: smart_thing_mnfc_google_pixel_device_count {
    type: number
    sql: ${TABLE}.smart_thing_mnfc_google_pixel_device_count ;;
  }

  dimension: smart_thing_mnfc_lo_mobile_device_count {
    type: number
    sql: ${TABLE}.smart_thing_mnfc_lo_mobile_device_count ;;
  }

  dimension: smart_thing_mnfc_lo_tab_device_count {
    type: number
    sql: ${TABLE}.smart_thing_mnfc_lo_tab_device_count ;;
  }

  dimension: smart_thing_mobile_device_count_phone {
    type: number
    sql: ${TABLE}.smart_thing_mobile_device_count_phone ;;
  }

  dimension: smart_thing_mobile_device_count_phone_tab {
    type: number
    sql: ${TABLE}.smart_thing_mobile_device_count_phone_tab ;;
  }

  dimension: smart_thing_mobile_device_count_tab {
    type: number
    sql: ${TABLE}.smart_thing_mobile_device_count_tab ;;
  }

  dimension: smart_thing_tv_device_count {
    type: number
    sql: ${TABLE}.smart_thing_tv_device_count ;;
  }

  dimension: smart_thing_wearable_gear_count {
    type: number
    sql: ${TABLE}.smart_thing_wearable_gear_count ;;
  }

  dimension_group: smart_things_join {
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
    sql: ${TABLE}.smart_things_join_date ;;
  }

  dimension: smart_things_join_flag {
    type: yesno
    sql: ${TABLE}.smart_things_join_flag ;;
  }

  dimension: smart_things_total_device_count {
    type: number
    sql: ${TABLE}.smart_things_total_device_count ;;
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
