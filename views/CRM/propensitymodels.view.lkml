view: propensitymodels {
  sql_table_name: `samsung-looker-emea.01_dl_seuk_crm.01_dl_seuk_propensitymodels`
    ;;

  dimension: aseries_deciles {
    type: number
    sql: ${TABLE}.aseries_deciles ;;
  }

  dimension: aseries_percentiles {
    type: number
    sql: ${TABLE}.aseries_percentiles ;;
  }

  dimension: aseries_score {
    type: number
    sql: ${TABLE}.aseries_score ;;
  }

  dimension: best_category {
    type: string
    sql: ${TABLE}.best_category ;;
  }

  dimension: best_product {
    type: string
    sql: ${TABLE}.best_product ;;
  }

  dimension: best_product_general {
    type: string
    sql: ${TABLE}.best_product_general ;;
  }

  dimension: best_product_im {
    type: string
    sql: ${TABLE}.best_product_IM ;;
  }

  dimension: best_product_tv {
    type: string
    sql: ${TABLE}.best_product_TV ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.creation_date ;;
  }

  dimension: d_customer_key {
    type: string
    sql: CAST(${TABLE}.d_customer_key AS INT64);;
  }

  dimension: domestic_appliances_deciles {
    type: number
    sql: ${TABLE}.domestic_appliances_deciles ;;
  }

  dimension: domestic_appliances_percentiles {
    type: number
    sql: ${TABLE}.domestic_appliances_percentiles ;;
  }

  dimension: domestic_appliances_score {
    type: number
    sql: ${TABLE}.domestic_appliances_score ;;
  }

  dimension: flip_deciles {
    type: number
    sql: ${TABLE}.flip_deciles ;;
  }

  dimension: flip_percentiles {
    type: number
    sql: ${TABLE}.flip_percentiles ;;
  }

  dimension: flip_score {
    type: number
    sql: ${TABLE}.flip_score ;;
  }

  dimension: fold_deciles {
    type: number
    sql: ${TABLE}.fold_deciles ;;
  }

  dimension: fold_percentiles {
    type: number
    sql: ${TABLE}.fold_percentiles ;;
  }

  dimension: fold_score {
    type: number
    sql: ${TABLE}.fold_score ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: nseries_deciles {
    type: number
    sql: ${TABLE}.nseries_deciles ;;
  }

  dimension: nseries_percentiles {
    type: number
    sql: ${TABLE}.nseries_percentiles ;;
  }

  dimension: nseries_score {
    type: number
    sql: ${TABLE}.nseries_score ;;
  }

  dimension: sseries_deciles {
    type: number
    sql: ${TABLE}.sseries_deciles ;;
  }

  dimension: sseries_percentiles {
    type: number
    sql: ${TABLE}.sseries_percentiles ;;
  }

  dimension: sseries_score {
    type: number
    sql: ${TABLE}.sseries_score ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.subsidiary ;;
  }

  dimension: tv_non_premium_deciles {
    type: number
    sql: ${TABLE}.tv_non_premium_deciles ;;
  }

  dimension: tv_non_premium_percentiles {
    type: number
    sql: ${TABLE}.tv_non_premium_percentiles ;;
  }

  dimension: tv_non_premium_score {
    type: number
    sql: ${TABLE}.tv_non_premium_score ;;
  }

  dimension: tv_premium_deciles {
    type: number
    sql: ${TABLE}.tv_premium_deciles ;;
  }

  dimension: tv_premium_percentiles {
    type: number
    sql: ${TABLE}.tv_premium_percentiles ;;
  }

  dimension: tv_premium_score {
    type: number
    sql: ${TABLE}.tv_premium_score ;;
  }

  dimension: weighted_aseries_score {
    type: number
    sql: ${TABLE}.weighted_aseries_score ;;
  }

  dimension: weighted_nseries_score {
    type: number
    sql: ${TABLE}.weighted_nseries_score ;;
  }

  dimension: weighted_sseries_score {
    type: number
    sql: ${TABLE}.weighted_sseries_score ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
