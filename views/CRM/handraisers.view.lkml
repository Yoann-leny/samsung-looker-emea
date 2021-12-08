view: handraisers {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_handraisers`
    ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CampaignID ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CampaignName ;;
  }

  dimension: campaign_name_date {
    type: string
    sql: ${TABLE}.CampaignNameDate ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: channel_cd {
    type: string
    sql: ${TABLE}.ChannelCD ;;
  }

  dimension: clicked {
    type: yesno
    sql: ${TABLE}.Clicked ;;
  }

  dimension: communication_category {
    type: string
    sql: ${TABLE}.CommunicationCategory ;;
  }

  dimension: communication_category_cd {
    type: string
    sql: ${TABLE}.CommunicationCategoryCD ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_cd {
    type: string
    sql: ${TABLE}.CountryCD ;;
  }

  dimension: d_customer_key {
    type: string
    sql: CAST(${TABLE}.d_customer_key AS INT64) ;;
  }

  dimension: delivery_id {
    type: string
    sql: ${TABLE}.DeliveryID ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: division_cd {
    type: string
    sql: ${TABLE}.DivisionCD ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.EventDate ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.EventID ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.EventName ;;
  }

  dimension: flagship_name {
    type: string
    sql: ${TABLE}.FlagshipName ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.GUID ;;
  }

  dimension: hand_raiser {
    type: yesno
    sql: ${TABLE}.HandRaiser ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IsActive ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: language_cd {
    type: string
    sql: ${TABLE}.LanguageCD ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: purchase_stage {
    type: string
    sql: ${TABLE}.PurchaseStage ;;
  }

  dimension: purchase_stage_cd {
    type: string
    sql: ${TABLE}.PurchaseStageCD ;;
  }

  dimension: sub_channel {
    type: string
    sql: ${TABLE}.SubChannel ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  dimension: suid {
    type: string
    sql: ${TABLE}.SUID ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.VisitorID ;;
  }

  dimension: week_number {
    type: string
    sql: ${TABLE}.WeekNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, flagship_name, event_name]
  }
}
