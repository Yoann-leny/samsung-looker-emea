view: audience_cohorts {

  extends: [audience_cohorts]
  derived_table: {
    explore_source: ga_sessions {
      column: audience_trait {}
      column: visits_total {}

      derived_column: rank {
        sql: ROW_NUMBER() OVER() ;;
      }

      bind_all_filters: yes
      sorts: [ga_sessions.visits_total: desc]
    }
  }

  dimension: audience_trait {
    # Field used to JOIN back to ga_sessions via ga_sessions.audience_traits = audience_cohorts.audience_traits
    hidden: yes
  }

  dimension: rank {
    label: "Audience Trait: Rank by Traffic"
    view_label: "Audience"
    group_label: "Audience Cohorts"
    description: "Dynamic rank for Audience Trait based on web traffic (Sessions). Includes all filters in current query and reranks on each new query."
    type: number
  }
}

# view: audience_cohorts {
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
