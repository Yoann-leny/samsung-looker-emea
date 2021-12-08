include: "/views/**/*.view.lkml"
view: customerdata {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_customerdata`
    ;;

  dimension: active_flag {
    type: yesno
    sql: ${TABLE}.ActiveFlag ;;
  }

  dimension: buyer {
    type: yesno
    sql: ${TABLE}.buyer ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_language {
    type: string
    sql: ${TABLE}.customer_language ;;
  }

  dimension: d_customer_key {
    type: number
    sql: CAST(${TABLE}.d_customer_key AS INT64) ;;
  }

  dimension: d_customer_key_string {
    type: string
    sql: ${TABLE}.d_customer_key ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: imeiavailable {
    type: yesno
    sql: ${TABLE}.IMEIAvailable ;;
  }

  dimension: is_contactable {
    type: yesno
    sql: ${TABLE}.IsContactable ;;
  }

  dimension: is_email_engaged {
    type: yesno
    sql: ${TABLE}.IsEmailEngaged ;;
  }

  dimension: is_opted_in {
    type: yesno
    sql: ${TABLE}.IsOptedIn ;;
  }

  dimension: members_flag {
    type: yesno
    sql: ${TABLE}.MembersFlag ;;
  }

  dimension: sam_id {
    type: string
    sql: ${TABLE}.SamID ;;
  }

  dimension: samsung_health_flag {
    type: yesno
    sql: ${TABLE}.SamsungHealthFlag ;;
  }

  dimension: samsung_pay_flag {
    type: yesno
    sql: ${TABLE}.SamsungPayFlag ;;
  }

  dimension_group: sua_join {
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
    sql: ${TABLE}.SuaJoinDate ;;
  }



  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  dimension: suid {
    type: string
    sql: ${TABLE}.SUID ;;
  }

  measure: volume {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" THEN ${d_customer_key_string} END ;;
  }

  measure: opted_in {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_opted_in} THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }

  measure: engaged {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_email_engaged} THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }

  measure: purchase {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED"
      and ${hybris_registration.purchase_source} in ("Hybris","Registration") THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }

  measure: estore_purchase {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED"
      and ${hybris_registration.purchase_source}="Hybris" THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }

  measure: purchase_opted_in {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_opted_in}
      and ${hybris_registration.purchase_source} in ("Hybris","Registration") THEN ${d_customer_key_string} END ;;
  }

  measure: purchase_engaged {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_email_engaged}
      and ${hybris_registration.purchase_source} in ("Hybris","Registration") THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }

  measure: registered {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED"
      and ${hybris_registration.purchase_source}="Registration" THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }
  measure: registered_opted_in {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_opted_in}
      and ${hybris_registration.purchase_source}="Registration" THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }
  measure: registered_engaged {
    type: count_distinct
    description: "Count distinct of SAMID"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${is_email_engaged}
      and ${hybris_registration.purchase_source}="Registration" THEN Coalesce(${d_customer_key_string},${sam_id}) END ;;
  }

  measure: joined {
    type: count_distinct
    description: "Number of Customer having joined the reward program"
    sql: Case when ${sam_id} <> "Undefined" and ${sam_id} <> "DELETED" and ${rewards.is_customer_reward}
      THEN Coalesce(${d_customer_key_string},${sam_id})END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
