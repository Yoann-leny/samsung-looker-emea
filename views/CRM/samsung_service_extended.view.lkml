view: samsung_service_extended {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_samsung_service_extended`
    ;;

  dimension: count_apps_download_all_3m {
    type: number
    sql: ${TABLE}.count_apps_download_all_3m ;;
  }

  dimension: count_apps_download_free_3m {
    type: number
    sql: ${TABLE}.count_apps_download_free_3m ;;
  }

  dimension: count_apps_download_paid_3m {
    type: number
    sql: ${TABLE}.count_apps_download_paid_3m ;;
  }

  dimension: count_flagship_phablet {
    type: number
    sql: ${TABLE}.count_flagship_phablet ;;
  }

  dimension: count_galaxy_note_excl_used_device {
    type: number
    sql: ${TABLE}.count_galaxy_note_excl_used_device ;;
  }

  dimension: count_galaxy_s_excl_used_device {
    type: number
    sql: ${TABLE}.count_galaxy_s_excl_used_device ;;
  }

  dimension: count_non_flagship {
    type: number
    sql: ${TABLE}.count_non_flagship ;;
  }

  dimension: count_non_flagship_a_series {
    type: number
    sql: ${TABLE}.count_non_flagship_a_series ;;
  }

  dimension: count_non_flagship_a_series_excl_used_device {
    type: number
    sql: ${TABLE}.count_non_flagship_a_series_excl_used_device ;;
  }

  dimension: count_non_flagship_excl_a_j_series {
    type: number
    sql: ${TABLE}.count_non_flagship_excl_a_j_series ;;
  }

  dimension: count_non_flagship_excl_a_j_series_used_device {
    type: number
    sql: ${TABLE}.count_non_flagship_excl_a_j_series_used_device ;;
  }

  dimension: count_non_flagship_excl_used_device {
    type: number
    sql: ${TABLE}.count_non_flagship_excl_used_device ;;
  }

  dimension: count_non_flagship_j_series {
    type: number
    sql: ${TABLE}.count_non_flagship_j_series ;;
  }

  dimension: count_non_flagship_j_series_excl_used_device {
    type: number
    sql: ${TABLE}.count_non_flagship_j_series_excl_used_device ;;
  }

  dimension: count_phablet {
    type: number
    sql: ${TABLE}.count_phablet ;;
  }

  dimension: count_smart_refridgerator {
    type: number
    sql: ${TABLE}.count_smart_refridgerator ;;
  }

  dimension: count_wearables {
    type: number
    sql: ${TABLE}.count_wearables ;;
  }

  dimension: count_wearables_excl_used_device {
    type: number
    sql: ${TABLE}.count_wearables_excl_used_device ;;
  }

  dimension: d_customer_key {
    type: string
    sql: CAST(${TABLE}.d_customer_key AS INT64) ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: is_last_mobile_new {
    type: yesno
    sql: ${TABLE}.is_last_mobile_new ;;
  }

  dimension: is_push_device_new {
    type: yesno
    sql: ${TABLE}.is_push_device_new ;;
  }

  dimension: is_used_device_new {
    type: yesno
    sql: ${TABLE}.is_used_device_new ;;
  }

  dimension: largest_screen_mobile {
    type: number
    sql: ${TABLE}.largest_screen_mobile ;;
  }

  dimension_group: last_mobile_device_1st_use_date_fota {
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
    sql: ${TABLE}.last_mobile_device_1st_use_date_fota_date ;;
  }

  dimension: last_mobile_device_mcc {
    type: string
    sql: ${TABLE}.last_mobile_device_mcc ;;
  }

  dimension: last_mobile_device_mnc {
    type: string
    sql: ${TABLE}.last_mobile_device_mnc ;;
  }

  dimension_group: last_mobile_device_registration {
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
    sql: ${TABLE}.last_mobile_device_registration_date ;;
  }

  dimension: last_mobile_device_series_name {
    type: string
    sql: ${TABLE}.last_mobile_device_series_name ;;
  }

  dimension_group: last_mobile_month_reg_after_launch {
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
    sql: ${TABLE}.last_mobile_month_reg_after_launch_date ;;
  }

  dimension_group: last_mobile_ownership_change {
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
    sql: ${TABLE}.last_mobile_ownership_change_date ;;
  }

  dimension: last_mobile_ownership_change_suid {
    type: string
    sql: ${TABLE}.last_mobile_ownership_change_suid ;;
  }

  dimension_group: mobile_device_inactive {
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
    sql: ${TABLE}.mobile_device_inactive_date ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension_group: prev_mobile_1st_use_date_fota {
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
    sql: ${TABLE}.prev_mobile_1st_use_date_fota_date ;;
  }

  dimension: prev_mobile_mcc {
    type: string
    sql: ${TABLE}.prev_mobile_mcc ;;
  }

  dimension: prev_mobile_mnc {
    type: string
    sql: ${TABLE}.prev_mobile_mnc ;;
  }

  dimension: prev_mobile_model_id {
    type: string
    sql: ${TABLE}.prev_mobile_model_id ;;
  }

  dimension_group: prev_mobile_reg {
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
    sql: ${TABLE}.prev_mobile_reg_date ;;
  }

  dimension: prev_mobile_series_name {
    type: string
    sql: ${TABLE}.prev_mobile_series_name ;;
  }

  dimension_group: push_avail_device_1st_use {
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
    sql: ${TABLE}.push_avail_device_1st_use_date ;;
  }

  dimension: push_avail_device_group_name {
    type: string
    sql: ${TABLE}.push_avail_device_group_name ;;
  }

  dimension: push_avail_device_hold_term {
    type: number
    sql: ${TABLE}.push_avail_device_hold_term ;;
  }

  dimension: push_avail_device_imei {
    type: string
    sql: ${TABLE}.push_avail_device_imei ;;
  }

  dimension: push_avail_device_mcc {
    type: string
    sql: ${TABLE}.push_avail_device_mcc ;;
  }

  dimension: push_avail_device_mnc {
    type: string
    sql: ${TABLE}.push_avail_device_mnc ;;
  }

  dimension: push_avail_device_model_id {
    type: string
    sql: ${TABLE}.push_avail_device_model_id ;;
  }

  dimension: push_avail_device_series_name {
    type: string
    sql: ${TABLE}.push_avail_device_series_name ;;
  }

  dimension_group: push_avail_registration {
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
    sql: ${TABLE}.push_avail_registration_date ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  dimension: suid {
    type: string
    sql: ${TABLE}.suid ;;
  }

  dimension: svc_app_login_flag {
    type: yesno
    sql: ${TABLE}.svc_app_login_flag ;;
  }

  dimension: svc_apps_login_3m_flag {
    type: yesno
    sql: ${TABLE}.svc_apps_login_3m_flag ;;
  }

  dimension: svc_samsung_health_login_3m_flag {
    type: yesno
    sql: ${TABLE}.svc_samsung_health_login_3m_flag ;;
  }

  dimension: svc_samsung_members_login_3m_flag {
    type: yesno
    sql: ${TABLE}.svc_samsung_members_login_3m_flag ;;
  }

  dimension: svc_samsung_pay_login_3m_flag {
    type: yesno
    sql: ${TABLE}.svc_samsung_pay_login_3m_flag ;;
  }

  dimension: svc_samsung_theme_flag {
    type: yesno
    sql: ${TABLE}.svc_samsung_theme_flag ;;
  }

  dimension: svc_samsung_theme_login_3m_flag {
    type: yesno
    sql: ${TABLE}.svc_samsung_theme_login_3m_flag ;;
  }

  dimension: svc_smart_things_flag {
    type: yesno
    sql: ${TABLE}.svc_smart_things_flag ;;
  }

  dimension: svc_smart_things_login_3m_flg {
    type: yesno
    sql: ${TABLE}.svc_smart_things_login_3m_flg ;;
  }

  dimension_group: svc_smart_things_login_6m {
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
    sql: ${TABLE}.svc_smart_things_login_6m ;;
  }

  dimension_group: use_device_1st_use_date_fota {
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
    sql: ${TABLE}.use_device_1st_use_date_fota_date ;;
  }

  dimension: use_device_hold_term {
    type: number
    sql: ${TABLE}.use_device_hold_term ;;
  }

  dimension: use_device_model_id {
    type: string
    sql: ${TABLE}.use_device_model_id ;;
  }

  dimension_group: use_device_reg {
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
    sql: ${TABLE}.use_device_reg_date ;;
  }

  measure: count {
    type: count
    drill_fields: [last_mobile_device_series_name, prev_mobile_series_name, push_avail_device_series_name, push_avail_device_group_name]
  }
}
