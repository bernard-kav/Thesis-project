view: terrorism_v1 {
  sql_table_name: Terror_and_Gun_Crime.terrorism_v1 ;;

  dimension: alternative_txt {
    type: string
    sql: ${TABLE}.alternative_txt ;;
  }

  dimension: attack_type {
    type: string
    sql: ${TABLE}.attack_type ;;
  }

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

  dimension: event_details {
    type: string
    sql: ${TABLE}.event_details ;;
  }

  dimension: eventid {
    type: string
    sql: ${TABLE}.eventid ;;
  }

  dimension: lat {
    type: number
    hidden: yes
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    hidden: yes
    sql: ${TABLE}.lng ;;
  }

  dimension: geo_location {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lng} ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: motive {
    type: string
    sql: ${TABLE}.motive ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
  }

  dimension: number_killed {
    type: number
    sql: ${TABLE}.number_killed ;;
  }

  dimension: number_wounded {
    type: number
    sql: ${TABLE}.number_wounded ;;
  }

  dimension: organisation_type {
    type: string
    sql: ${TABLE}.organisation_type ;;
  }

  dimension: perpatrator {
    type: string
    sql: ${TABLE}.perpatrator ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: target_subtype {
    type: string
    sql: ${TABLE}.target_subtype ;;
  }

  dimension: target_type {
    type: string
    sql: ${TABLE}.target_type ;;
  }

  dimension: weapon_type {
    type: string
    sql: ${TABLE}.weapon_type ;;
  }

  measure: total_number_killed {
    type: sum
    sql: ${number_killed} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
