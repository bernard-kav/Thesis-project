view: world_population {
  sql_table_name: Terror_and_Gun_Crime.world_population_v1;;

  dimension: Rank {
    type: number
    sql: %${TABLE}.rank ;;
  }
  dimension: Country {
    type: string
    sql: %${TABLE}.country ;;
  }
  dimension: Total_population {
    type: number
    sql: %${TABLE}.total_population ;;
  }
  dimension: Yearly_Change {
    type: number
    value_format: "percent"
    sql: %${TABLE}.yearly_change ;;
  }
  dimension: Net_Change {
    type: number
    value_format: "percent"
    sql: %${TABLE}.net_change ;;
  }
  dimension: Land_mass_km {
    type: number
    sql: %${TABLE}.land_mass_km ;;
  }
  dimension: Fertility_rate {
    type: string
    sql: %${TABLE}.fertility_rate ;;
  }
  dimension: Median_age {
    type: string
    sql: %${TABLE}.median_age ;;
  }
  dimension: Urban_population {
    type: string
    sql: %${TABLE}.urban_population ;;
  }
  dimension: World_Share {
    type: number
    value_format: "percent"
    sql: %${TABLE}.world_Share ;;
  }

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: world_population {
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
