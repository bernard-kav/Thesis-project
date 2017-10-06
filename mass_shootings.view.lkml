view: mass_shootings {
  sql_table_name: terror_and_Gun_Crime.mass_shootings ;;

  dimension: Sid {
    description: "id of each shooting"
    type: number
    label: "Shooting ID"
    sql: %${TABLE}.S_ ;;
  }
  dimension: title {
    type: string
    sql: %${TABLE}.title ;;
  }
  dimension: Title {
    type: string
    sql: %${TABLE}.title ;;
  }
  dimension: Location  {
    type: string
    sql: %${TABLE}.location  ;;
  }
  dimension: Date {
    type: date
    sql: %${TABLE}.date ;;
  }
  dimension: Summary {
    type: string
    sql: %${TABLE}.summary ;;
  }
  dimension: Fatalities {
    type: number
    sql: %${TABLE}.fatalaties ;;
  }
  dimension: Injured {
    type: number
    sql: %${TABLE}.injured ;;
  }
  dimension: Total_victims {
    type: number
    sql: %${TABLE}.total_victims ;;
  }
  dimension: Mental_health_issues {
    type: yesno
    sql: %${TABLE}.mental_health_issues ;;
  }
  dimension: Race {
    type: string
    sql: %${TABLE}.race ;;
  }
  dimension: Gender {
    type: string
    sql: %${TABLE}.gender ;;
  }
  dimension: Latitude {
    type: location
    sql_latitude: ${Latitude} ;;
  }
  dimension: Longitude {
    type: location
    sql_longitude: ${Longitude} ;;
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

# view: mass_shootings {
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
