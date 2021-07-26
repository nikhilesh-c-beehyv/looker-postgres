view: baseball_defensive_stats {
  sql_table_name: public.baseball_defensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: assists {
    type: number
    sql: ${TABLE}."assists" ;;
  }

  dimension: defensive_average {
    type: number
    sql: ${TABLE}."defensive_average" ;;
  }

  dimension: double_plays {
    type: number
    sql: ${TABLE}."double_plays" ;;
  }

  dimension: errors {
    type: number
    sql: ${TABLE}."errors" ;;
  }

  dimension: errors_catchers_interference {
    type: number
    sql: ${TABLE}."errors_catchers_interference" ;;
  }

  dimension: errors_passed_ball {
    type: number
    sql: ${TABLE}."errors_passed_ball" ;;
  }

  dimension: fielding_percentage {
    type: number
    sql: ${TABLE}."fielding_percentage" ;;
  }

  dimension: putouts {
    type: number
    sql: ${TABLE}."putouts" ;;
  }

  dimension: triple_plays {
    type: number
    sql: ${TABLE}."triple_plays" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
