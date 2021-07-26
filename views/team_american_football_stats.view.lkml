view: team_american_football_stats {
  sql_table_name: public.team_american_football_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: average_starting_position {
    type: string
    sql: ${TABLE}."average_starting_position" ;;
  }

  dimension: time_of_possession {
    type: string
    sql: ${TABLE}."time_of_possession" ;;
  }

  dimension: timeouts {
    type: string
    sql: ${TABLE}."timeouts" ;;
  }

  dimension: turnover_ratio {
    type: string
    sql: ${TABLE}."turnover_ratio" ;;
  }

  dimension: yards_per_attempt {
    type: string
    sql: ${TABLE}."yards_per_attempt" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
