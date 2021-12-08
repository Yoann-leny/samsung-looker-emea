# include: "/views/**/hybris_registration.view.lkml"
# view: customer_data {
#   sql_table_name: `@{PROJECT_NAME}.024_tr_seuk_crm.024_tr_seuk_customer`
#     ;;

#   dimension: active_flag {
#     type: yesno
#     sql: ${TABLE}.ActiveFlag ;;
#   }

#   dimension: age {
#     type: number
#     sql: ${TABLE}.Age ;;
#   }

#   dimension: avg_price {
#     type: number
#     sql: ${TABLE}.AvgPrice ;;
#   }

#   dimension: buyer {
#     type: yesno
#     sql: ${TABLE}.buyer ;;
#   }

#   dimension: change_term {
#     type: number
#     sql: ${TABLE}.ChangeTerm ;;
#   }

#   dimension: clicked_current_month {
#     type: yesno
#     sql: ${TABLE}.Clicked_current_month ;;
#   }

#   dimension: clicked_last_2_months {
#     type: yesno
#     sql: ${TABLE}.Clicked_last_2_months ;;
#   }

#   dimension: clicked_last_6_months {
#     type: yesno
#     sql: ${TABLE}.Clicked_last_6_months ;;
#   }

#   dimension: clicked_last_month {
#     type: yesno
#     sql: ${TABLE}.Clicked_last_month ;;
#   }

#   dimension: count_apps_download_all_3m {
#     type: number
#     sql: ${TABLE}.count_apps_download_all_3m ;;
#   }

#   dimension: count_apps_download_free_3m {
#     type: number
#     sql: ${TABLE}.count_apps_download_free_3m ;;
#   }

#   dimension: count_apps_download_paid_3m {
#     type: number
#     sql: ${TABLE}.count_apps_download_paid_3m ;;
#   }

#   dimension: count_flagship_phablet {
#     type: number
#     sql: ${TABLE}.count_flagship_phablet ;;
#   }

#   dimension: count_galaxy_note_excl_used_device {
#     type: number
#     sql: ${TABLE}.count_galaxy_note_excl_used_device ;;
#   }

#   dimension: count_galaxy_s_excl_used_device {
#     type: number
#     sql: ${TABLE}.count_galaxy_s_excl_used_device ;;
#   }

#   dimension: count_non_flagship {
#     type: number
#     sql: ${TABLE}.count_non_flagship ;;
#   }

#   dimension: count_non_flagship_a_series {
#     type: number
#     sql: ${TABLE}.count_non_flagship_a_series ;;
#   }

#   dimension: count_non_flagship_a_series_excl_used_device {
#     type: number
#     sql: ${TABLE}.count_non_flagship_a_series_excl_used_device ;;
#   }

#   dimension: count_non_flagship_excl_a_j_series {
#     type: number
#     sql: ${TABLE}.count_non_flagship_excl_a_j_series ;;
#   }

#   dimension: count_non_flagship_excl_a_j_series_used_device {
#     type: number
#     sql: ${TABLE}.count_non_flagship_excl_a_j_series_used_device ;;
#   }

#   dimension: count_non_flagship_excl_used_device {
#     type: number
#     sql: ${TABLE}.count_non_flagship_excl_used_device ;;
#   }

#   dimension: count_non_flagship_j_series {
#     type: number
#     sql: ${TABLE}.count_non_flagship_j_series ;;
#   }

#   dimension: count_non_flagship_j_series_excl_used_device {
#     type: number
#     sql: ${TABLE}.count_non_flagship_j_series_excl_used_device ;;
#   }

#   dimension: count_phablet {
#     type: number
#     sql: ${TABLE}.count_phablet ;;
#   }

#   dimension: count_smart_refridgerator {
#     type: number
#     sql: ${TABLE}.count_smart_refridgerator ;;
#   }

#   dimension: count_wearables {
#     type: number
#     sql: ${TABLE}.count_wearables ;;
#   }

#   dimension: count_wearables_excl_used_device {
#     type: number
#     sql: ${TABLE}.count_wearables_excl_used_device ;;
#   }

#   dimension: country {
#     type: string
#     map_layer_name: countries
#     sql: ${TABLE}.Country ;;
#   }

#   dimension: cust_id {
#     type: string
#     sql: ${TABLE}.cust_id ;;
#   }

#   dimension: customer_language {
#     type: string
#     sql: ${TABLE}.customer_language ;;
#   }

#   dimension: d_customer_key {
#     type: string
#     sql: CAST(${TABLE}.d_customer_key AS INT64) ;;
#   }

#   dimension: device_count_phone {
#     type: number
#     sql: ${TABLE}.DeviceCountPhone ;;
#   }

#   dimension: device_count_tablet {
#     type: number
#     sql: ${TABLE}.DeviceCountTablet ;;
#   }

#   dimension: device_count_tv {
#     type: number
#     sql: ${TABLE}.DeviceCountTV ;;
#   }

#   dimension: device_superpremium {
#     type: number
#     sql: ${TABLE}.DeviceSuperpremium ;;
#   }

#   dimension: download_count_months6 {
#     type: number
#     sql: ${TABLE}.DownloadCountMonths6 ;;
#   }

#   dimension: flagship_note_series_reg {
#     type: number
#     sql: ${TABLE}.FlagshipNoteSeriesReg ;;
#   }

#   dimension: flagship_series_reg {
#     type: number
#     sql: ${TABLE}.FlagshipSeriesReg ;;
#   }

#   dimension: flagship_smart_phone_reg {
#     type: number
#     sql: ${TABLE}.FlagshipSmartPhoneReg ;;
#   }

#   dimension: flagship_super_premium {
#     type: number
#     sql: ${TABLE}.FlagshipSuperPremium ;;
#   }

#   dimension: gender {
#     type: string
#     sql: ${TABLE}.gender ;;
#   }

#   dimension: guid {
#     type: string
#     sql: ${TABLE}.guid ;;
#   }

#   dimension: hold_term {
#     type: number
#     sql: ${TABLE}.HoldTerm ;;
#   }

#   dimension: imeiavailable {
#     type: yesno
#     sql: ${TABLE}.IMEIAvailable ;;
#   }

#   dimension: in_active_term {
#     type: number
#     sql: ${TABLE}.InActiveTerm ;;
#   }

#   dimension: is_contactable {
#     type: yesno
#     sql: ${TABLE}.IsContactable ;;
#   }

#   dimension: is_email_engaged {
#     type: yesno
#     sql: ${TABLE}.IsEmailEngaged ;;
#   }

#   dimension: is_last_mobile_new {
#     type: yesno
#     sql: ${TABLE}.is_last_mobile_new ;;
#   }

#   dimension: is_opted_in {
#     type: yesno
#     sql: ${TABLE}.IsOptedIn ;;
#   }

#   dimension: is_push_device_new {
#     type: yesno
#     sql: ${TABLE}.is_push_device_new ;;
#   }

#   dimension: is_used_device_new {
#     type: yesno
#     sql: ${TABLE}.is_used_device_new ;;
#   }

#   dimension: join_year {
#     type: number
#     sql: ${TABLE}.JoinYear ;;
#   }

#   dimension: language {
#     type: string
#     sql: ${TABLE}.language ;;
#   }

#   dimension: largest_screen_mobile {
#     type: number
#     sql: ${TABLE}.largest_screen_mobile ;;
#   }

#   dimension_group: last_app_open_date_galaxyapps {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_app_open_date_galaxyapps ;;
#   }

#   dimension_group: last_app_open_date_galaxythemes {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_app_open_date_galaxythemes ;;
#   }

#   dimension_group: last_app_open_date_shealth {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_app_open_date_shealth ;;
#   }

#   dimension_group: last_app_open_date_smembers {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_app_open_date_smembers ;;
#   }

#   dimension: is_member {
#     type: yesno
#     sql:  ${TABLE}.last_app_open_date_smembers is not null ;;
#   }

#   dimension_group: last_app_open_date_spay {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_app_open_date_spay ;;
#   }

#   dimension_group: last_mobile_device_1st_use_date_fota {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_mobile_device_1st_use_date_fota_date ;;
#   }

#   dimension: last_mobile_device_mcc {
#     type: number
#     sql: ${TABLE}.last_mobile_device_mcc ;;
#   }

#   dimension: last_mobile_device_mnc {
#     type: number
#     sql: ${TABLE}.last_mobile_device_mnc ;;
#   }

#   dimension_group: last_mobile_device_registration {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_mobile_device_registration_date ;;
#   }

#   dimension: last_mobile_device_series_name {
#     type: string
#     sql: ${TABLE}.last_mobile_device_series_name ;;
#   }

#   dimension_group: last_mobile_month_reg_after_launch {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_mobile_month_reg_after_launch_date ;;
#   }

#   dimension_group: last_mobile_ownership_change {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.last_mobile_ownership_change_date ;;
#   }

#   dimension: last_mobile_ownership_change_suid {
#     type: string
#     sql: ${TABLE}.last_mobile_ownership_change_suid ;;
#   }

#   dimension_group: max_clicked {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.max_clicked ;;
#   }

#   dimension_group: max_opened {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.max_opened ;;
#   }

#   dimension: max_price_smart_phone {
#     type: number
#     sql: ${TABLE}.MaxPriceSmartPhone ;;
#   }

#   dimension: members_flag {
#     type: yesno
#     sql: ${TABLE}.MembersFlag ;;
#   }

#   dimension: min_adopt_month {
#     type: number
#     sql: ${TABLE}.MinAdoptMonth ;;
#   }

#   dimension_group: mobile_device_inactive {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.mobile_device_inactive_date ;;
#   }

#   dimension: note7_super_premium {
#     type: number
#     sql: ${TABLE}.Note7SuperPremium ;;
#   }

#   dimension: opened_current_month {
#     type: yesno
#     sql: ${TABLE}.Opened_current_month ;;
#   }

#   dimension: opened_last_2_months {
#     type: yesno
#     sql: ${TABLE}.Opened_last_2_months ;;
#   }

#   dimension: opened_last_6_months {
#     type: yesno
#     sql: ${TABLE}.Opened_last_6_months ;;
#   }

#   dimension: opened_last_month {
#     type: yesno
#     sql: ${TABLE}.Opened_last_month ;;
#   }

#   dimension: origin {
#     type: string
#     sql: ${TABLE}.origin ;;
#   }

#   dimension_group: prev_mobile_1st_use_date_fota {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.prev_mobile_1st_use_date_fota_date ;;
#   }

#   dimension: prev_mobile_mcc {
#     type: number
#     sql: ${TABLE}.prev_mobile_mcc ;;
#   }

#   dimension: prev_mobile_mnc {
#     type: number
#     sql: ${TABLE}.prev_mobile_mnc ;;
#   }

#   dimension: prev_mobile_model_id {
#     type: string
#     sql: ${TABLE}.prev_mobile_model_id ;;
#   }

#   dimension_group: prev_mobile_reg {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.prev_mobile_reg_date ;;
#   }

#   dimension: prev_mobile_series_name {
#     type: string
#     sql: ${TABLE}.prev_mobile_series_name ;;
#   }

#   dimension: price_key {
#     type: string
#     sql: ${TABLE}.price_key ;;
#   }

#   dimension: profile_score {
#     type: number
#     sql: ${TABLE}.ProfileScore ;;
#   }

#   dimension_group: push_avail_device_1st_use {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.push_avail_device_1st_use_date ;;
#   }

#   dimension: push_avail_device_group_name {
#     type: string
#     sql: ${TABLE}.push_avail_device_group_name ;;
#   }

#   dimension: push_avail_device_hold_term {
#     type: number
#     sql: ${TABLE}.push_avail_device_hold_term ;;
#   }

#   dimension: push_avail_device_imei {
#     type: number
#     sql: ${TABLE}.push_avail_device_imei ;;
#   }

#   dimension: push_avail_device_mcc {
#     type: number
#     sql: ${TABLE}.push_avail_device_mcc ;;
#   }

#   dimension: push_avail_device_mnc {
#     type: number
#     sql: ${TABLE}.push_avail_device_mnc ;;
#   }

#   dimension: push_avail_device_model_id {
#     type: string
#     sql: ${TABLE}.push_avail_device_model_id ;;
#   }

#   dimension: push_avail_device_series_name {
#     type: string
#     sql: ${TABLE}.push_avail_device_series_name ;;
#   }

#   dimension_group: push_avail_registration {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.push_avail_registration_date ;;
#   }

#   dimension: sam_id {
#     type: string
#     sql: ${TABLE}.SamID ;;
#   }

#   dimension: samsung_health_flag {
#     type: yesno
#     sql: ${TABLE}.SamsungHealthFlag ;;
#   }

#   dimension: samsung_pay_flag {
#     type: yesno
#     sql: ${TABLE}.SamsungPayFlag ;;
#   }

#   dimension: service_visit_count_months6 {
#     type: number
#     sql: ${TABLE}.ServiceVisitCountMonths6 ;;
#   }

#   dimension: service_visit_months6 {
#     type: number
#     sql: ${TABLE}.ServiceVisitMonths6 ;;
#   }

#   dimension: smart_thing_ce_air_dresser_steam_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_air_dresser_steam_count ;;
#   }

#   dimension: smart_thing_ce_air_purifier_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_air_purifier_count ;;
#   }

#   dimension: smart_thing_ce_airconditioner_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_airconditioner_count ;;
#   }

#   dimension: smart_thing_ce_cooktop_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_cooktop_count ;;
#   }

#   dimension: smart_thing_ce_dryer_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_dryer_count ;;
#   }

#   dimension: smart_thing_ce_network_audio_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_network_audio_count ;;
#   }

#   dimension: smart_thing_ce_oven_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_oven_count ;;
#   }

#   dimension: smart_thing_ce_refridgerator_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_refridgerator_count ;;
#   }

#   dimension: smart_thing_ce_robot_cleaner_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_robot_cleaner_count ;;
#   }

#   dimension: smart_thing_ce_wash_machine_count {
#     type: number
#     sql: ${TABLE}.smart_thing_ce_wash_machine_count ;;
#   }

#   dimension: smart_thing_dish_washer_count {
#     type: number
#     sql: ${TABLE}.smart_thing_dish_washer_count ;;
#   }

#   dimension: smart_thing_mnfc_c_brand_device_count {
#     type: number
#     sql: ${TABLE}.smart_thing_mnfc_c_brand_device_count ;;
#   }

#   dimension: smart_thing_mnfc_google_pixel_device_count {
#     type: number
#     sql: ${TABLE}.smart_thing_mnfc_google_pixel_device_count ;;
#   }

#   dimension: smart_thing_mnfc_lo_mobile_device_count {
#     type: number
#     sql: ${TABLE}.smart_thing_mnfc_lo_mobile_device_count ;;
#   }

#   dimension: smart_thing_mnfc_lo_tab_device_count {
#     type: number
#     sql: ${TABLE}.smart_thing_mnfc_lo_tab_device_count ;;
#   }

#   dimension: smart_thing_mobile_device_count_phone {
#     type: number
#     sql: ${TABLE}.smart_thing_mobile_device_count_phone ;;
#   }

#   dimension: smart_thing_mobile_device_count_phone_tab {
#     type: number
#     sql: ${TABLE}.smart_thing_mobile_device_count_phone_tab ;;
#   }

#   dimension: smart_thing_mobile_device_count_tab {
#     type: number
#     sql: ${TABLE}.smart_thing_mobile_device_count_tab ;;
#   }

#   dimension: smart_thing_tv_device_count {
#     type: number
#     sql: ${TABLE}.smart_thing_tv_device_count ;;
#   }

#   dimension: smart_thing_wearable_gear_count {
#     type: number
#     sql: ${TABLE}.smart_thing_wearable_gear_count ;;
#   }

#   dimension_group: smart_things_join {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.smart_things_join_date ;;
#   }

#   dimension: smart_things_join_flag {
#     type: yesno
#     sql: ${TABLE}.smart_things_join_flag ;;
#   }

#   dimension: smart_things_total_device_count {
#     type: number
#     sql: ${TABLE}.smart_things_total_device_count ;;
#   }

#   dimension_group: sua_join {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: TIMESTAMP(${TABLE}.SuaJoinDate) ;;
#   }

#   dimension: subsidiary {
#     type: string
#     sql: ${TABLE}.Subsidiary ;;
#   }

#   dimension: suid {
#     type: string
#     sql: ${TABLE}.SUID ;;
#   }

#   dimension: svc_app_login_flag {
#     type: yesno
#     sql: ${TABLE}.svc_app_login_flag ;;
#   }

#   dimension: svc_apps_login_3m_flag {
#     type: yesno
#     sql: ${TABLE}.svc_apps_login_3m_flag ;;
#   }

#   dimension: svc_samsung_health_login_3m_flag {
#     type: yesno
#     sql: ${TABLE}.svc_samsung_health_login_3m_flag ;;
#   }

#   dimension: svc_samsung_members_login_3m_flag {
#     type: yesno
#     sql: ${TABLE}.svc_samsung_members_login_3m_flag ;;
#   }

#   dimension: svc_samsung_pay_login_3m_flag {
#     type: yesno
#     sql: ${TABLE}.svc_samsung_pay_login_3m_flag ;;
#   }

#   dimension: svc_samsung_theme_flag {
#     type: yesno
#     sql: ${TABLE}.svc_samsung_theme_flag ;;
#   }

#   dimension: svc_samsung_theme_login_3m_flag {
#     type: yesno
#     sql: ${TABLE}.svc_samsung_theme_login_3m_flag ;;
#   }

#   dimension: svc_smart_things_flag {
#     type: yesno
#     sql: ${TABLE}.svc_smart_things_flag ;;
#   }

#   dimension: svc_smart_things_login_3m_flg {
#     type: yesno
#     sql: ${TABLE}.svc_smart_things_login_3m_flg ;;
#   }

#   dimension_group: svc_smart_things_login_6m {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.svc_smart_things_login_6m ;;
#   }

#   dimension_group: use_device_1st_use_date_fota {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.use_device_1st_use_date_fota_date ;;
#   }

#   dimension: use_device_hold_term {
#     type: number
#     sql: ${TABLE}.use_device_hold_term ;;
#   }

#   dimension: is_customer_reward {
#     type: yesno
#     sql: ${TABLE}.is_customer_reward=1 ;;
#   }

#   dimension: use_device_model_id {
#     type: string
#     sql: ${TABLE}.use_device_model_id ;;
#   }

#   dimension_group: use_device_reg {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.use_device_reg_date ;;
#   }

#   measure: volume {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" THEN ${d_customer_key} END ;;
#   }

#   measure: opted_in {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_opted_in} THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }

#   measure: engaged {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_email_engaged} THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }

#   measure: purchase {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED"
#     and ${hybris_registration.purchase_source} in ("Hybris","Registration") THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }

#   measure: estore_purchase {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED"
#       and ${hybris_registration.purchase_source}="Hybris" THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }

#   measure: purchase_opted_in {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_opted_in}
#       and ${hybris_registration.purchase_source} in ("Hybris","Registration") THEN ${d_customer_key} END ;;
#   }

#   measure: purchase_engaged {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_email_engaged}
#       and ${hybris_registration.purchase_source} in ("Hybris","Registration") THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }

#   measure: registered {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED"
#       and ${hybris_registration.purchase_source}="Registration" THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }
#   measure: registered_opted_in {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_opted_in}
#       and ${hybris_registration.purchase_source}="Registration" THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }
#   measure: registered_engaged {
#     type: count_distinct
#     description: "Count distinct of SAMID"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_email_engaged}
#       and ${hybris_registration.purchase_source}="Registration" THEN Coalesce(${d_customer_key},${sam_id}) END ;;
#   }

#   measure: joined {
#     type: count_distinct
#     description: "Number of Customer having joined the reward program"
#     sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_customer_reward}
#       THEN Coalesce(${d_customer_key},${sam_id})END ;;
#   }

#   measure: count {
#     type: count
#     drill_fields: [push_avail_device_group_name, last_mobile_device_series_name, prev_mobile_series_name, push_avail_device_series_name]
#   }
# }
