view: world_population_v1 {
  sql_table_name: Terror_and_Gun_Crime.world_population_v1 ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: fertility_rate {
    type: string
    sql: ${TABLE}.Fertility_rate ;;
  }

  dimension: land_mass_km {
    type: number
    sql: ${TABLE}.Land_mass_km ;;
  }

  dimension: median_age {
    type: string
    sql: ${TABLE}.Median_age ;;
  }

  dimension: net_change {
    type: number
    sql: ${TABLE}.Net_Change ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: total_population {
    type: number
    sql: ${TABLE}.Total_population ;;
  }

  dimension: urban_population {
    type: string
    sql: ${TABLE}.Urban_population ;;
  }

  dimension: world_share {
    type: number
    sql: ${TABLE}.World_Share ;;
  }

  dimension: yearly_change {
    type: number
    sql: ${TABLE}.Yearly_Change ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
