view: terrorism {
  sql_table_name: terror_and_Gun_Crime.terrorism_v1 ;;
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  dimension: eventid {
    primary_key: yes
    description: "Unique id for each event"
    type: string
    sql: %${TABLE}.eventid ;;
  }
  dimension: date {
    description: "date each event occurred"
    type: date
    sql: %${TABLE}.date ;;
  }
  dimension: country {
    description: "country each event took place in"
    type: string
    sql: %${TABLE}.country ;;
  }
  dimension: region {
    description: "region for each event"
    type: string
    sql: %${TABLE}.region ;;
  }
  dimension: province {
    description: "province for each event"
    type: string
    sql: %${TABLE}.province ;;
  }
  dimension: city {
    description: "city each event took place in"
    type: string
    sql: %${TABLE}.city ;;
  }
  dimension: lat {
    type: number
    label: "latitude"
    sql_latitude: ${lat} ;;
  }
  dimension: lng {
    type: number
    label: "longitude"
    sql_latitude: ${lng} ;;
  }
  dimension: location {
    description: "location of event"
    type: string
    sql: %${TABLE}.loation ;;
  }
  dimension: event_details {
    description: "description of each attack"
    type: string
    sql: %${TABLE}.event_details ;;
  }
  dimension: alterntive_txt {
    description: "alternative description"
    type: string
    sql: %${TABLE}.alterntive_txt ;;
  }
  dimension: attack_type {
    description: "typr of attack"
    type: string
    sql: %${TABLE}.attack_type ;;
  }
  dimension: target_type   {
    description: "type of person/group targeted"
    type: string
    sql: %${TABLE}.target_type   ;;
  }
  dimension: target_subtype {
    description: "target subtype"
    type: string
    sql: %${TABLE}.target_subtype ;;
  }
  dimension: organisation_type   {
    description: "targeted group"
    type: string
    sql: %${TABLE}.organisation_type   ;;
  }
  dimension: nationality   {
    description: "where were they from"
    type: string
    sql: %${TABLE}.nationality   ;;
  }
  dimension: perpatrator   {
    description: "who is responsible for attack"
    type: string
    sql: %${TABLE}.perpatrator   ;;
  }
  dimension: motive  {
    description: "why did they attack"
    type: string
    sql: %${TABLE}.motive  ;;
  }
  dimension: weapon_type {
    description: "kind of weapons used"
    type: string
    sql: %${TABLE}.weapon_type ;;
  }
  dimension: number_killed {
    description: "number of people killed in each attack"
    type: number
    sql: %${TABLE}.number_killed ;;
  }
  dimension: number_wounded  {
    description: "number of people used in each attack"
    type: string
    sql: %${TABLE}.number_wounded  ;;
  }
  measure: total_killed{
    description: "sum of total killings"
    type: sum
    sql: ${number_killed} ;;
  }
  measure: total_wounded {
    description: "sum of total wounded"
    type: sum
    sql: ${number_wounded} ;;
  }
  measure:  count {
    type: count
  }
  measure: average {
    type: average
  }

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

# view: terrorism {
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
