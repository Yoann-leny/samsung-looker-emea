view: samsung_service {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_samsung_service`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: avg_price {
    type: number
    sql: ${TABLE}.AvgPrice ;;
  }

  dimension: change_term {
    type: number
    sql: ${TABLE}.ChangeTerm ;;
  }

  dimension: cust_id {
    type: string
    sql: ${TABLE}.cust_id ;;
  }

  dimension: d_customer_key {
    type: string
    sql: CAST(${TABLE}.d_customer_key AS INT64);;
  }

  dimension: device_count_phone {
    type: number
    sql: ${TABLE}.DeviceCountPhone ;;
  }

  dimension: device_count_tablet {
    type: number
    sql: ${TABLE}.DeviceCountTablet ;;
  }

  dimension: device_count_tv {
    type: number
    sql: ${TABLE}.DeviceCountTV ;;
  }

  dimension: device_superpremium {
    type: number
    sql: ${TABLE}.DeviceSuperpremium ;;
  }

  dimension: download_count_months6 {
    type: number
    sql: ${TABLE}.DownloadCountMonths6 ;;
  }

  dimension: flagship_note_series_reg {
    type: number
    sql: ${TABLE}.FlagshipNoteSeriesReg ;;
  }

  dimension: flagship_series_reg {
    type: number
    sql: ${TABLE}.FlagshipSeriesReg ;;
  }

  dimension: flagship_smart_phone_reg {
    type: number
    sql: ${TABLE}.FlagshipSmartPhoneReg ;;
  }

  dimension: flagship_super_premium {
    type: number
    sql: ${TABLE}.FlagshipSuperPremium ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: hold_term {
    type: number
    sql: ${TABLE}.HoldTerm ;;
  }

  dimension: in_active_term {
    type: number
    sql: ${TABLE}.InActiveTerm ;;
  }

  dimension: join_year {
    type: number
    sql: ${TABLE}.JoinYear ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension_group: last_app_open_date_galaxyapps {
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
    sql: ${TABLE}.last_app_open_date_galaxyapps ;;
  }

  dimension_group: last_app_open_date_galaxythemes {
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
    sql: ${TABLE}.last_app_open_date_galaxythemes ;;
  }

  dimension_group: last_app_open_date_shealth {
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
    sql: ${TABLE}.last_app_open_date_shealth ;;
  }

  dimension_group: last_app_open_date_smembers {
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
    sql: ${TABLE}.last_app_open_date_smembers ;;
  }

  dimension: is_member {
    type: yesno
    sql:  ${TABLE}.last_app_open_date_smembers is not null ;;
  }

  dimension_group: last_app_open_date_spay {
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
    sql: ${TABLE}.last_app_open_date_spay ;;
  }

  dimension: max_price_smart_phone {
    type: number
    sql: ${TABLE}.MaxPriceSmartPhone ;;
  }

  dimension: min_adopt_month {
    type: number
    sql: ${TABLE}.MinAdoptMonth ;;
  }

  dimension: note7_super_premium {
    type: number
    sql: ${TABLE}.Note7SuperPremium ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: price_key {
    type: string
    sql: ${TABLE}.price_key ;;
  }

  dimension: profile_score {
    type: number
    sql: ${TABLE}.ProfileScore ;;
  }

  dimension: service_visit_count_months6 {
    type: number
    sql: ${TABLE}.ServiceVisitCountMonths6 ;;
  }

  dimension: service_visit_months6 {
    type: number
    sql: ${TABLE}.ServiceVisitMonths6 ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  dimension: suid {
    type: string
    sql: ${TABLE}.suid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
