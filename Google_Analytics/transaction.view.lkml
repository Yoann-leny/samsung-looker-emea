view: transaction_config {
  extension: required


  dimension: transactionId {
    label: "Transaction ID"
    type: string
    sql: ${TABLE}.transactionId ;;
  }
  dimension: transactionRevenue {
    label: "Transaction Revenue"
    type: number
    sql: ${TABLE}.transactionRevenue ;;
  }
  dimension: transactionTax {
    label: "Transaction Tax"
    type: number
    sql: ${TABLE}.transactionTax ;;
  }
  dimension: transactionShipping {
    label: "Transaction Shipping"
    type: number
    sql: ${TABLE}.transactionShipping ;;
  }
  dimension: affiliation {
    label: "Affiliation"
    type: string
    sql: ${TABLE}.affiliation ;;
  }
  dimension: currencyCode {
    label: "Currency Code"
    type: string
    sql: ${TABLE}.currencyCode ;;
  }

}

# view: transaction {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }