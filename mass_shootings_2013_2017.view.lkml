view: mass_shootings_2013_2017 {
  sql_table_name: Terror_and_Gun_Crime.mass_shootings_2013_2017 ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: number_killed {
    type: number
    sql: ${TABLE}.number_killed ;;
  }

  dimension: number_wounded {
    type: number
    sql: ${TABLE}.number_wounded ;;
  }

  dimension: perpetrator_name {
    type: string
    sql: ${TABLE}.perpetrator_name ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [perpetrator_name]
  }
}
