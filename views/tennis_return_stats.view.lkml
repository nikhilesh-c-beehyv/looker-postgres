view: tennis_return_stats {
  sql_table_name: public.tennis_return_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: break_points_converted {
    type: string
    sql: ${TABLE}."break_points_converted" ;;
  }

  dimension: break_points_converted_pct {
    type: string
    sql: ${TABLE}."break_points_converted_pct" ;;
  }

  dimension: break_points_played {
    type: string
    sql: ${TABLE}."break_points_played" ;;
  }

  dimension: first_service_return_points_won {
    type: string
    sql: ${TABLE}."first_service_return_points_won" ;;
  }

  dimension: first_service_return_points_won_pct {
    type: string
    sql: ${TABLE}."first_service_return_points_won_pct" ;;
  }

  dimension: matches_played {
    type: string
    sql: ${TABLE}."matches_played" ;;
  }

  dimension: return_games_played {
    type: string
    sql: ${TABLE}."return_games_played" ;;
  }

  dimension: return_games_won {
    type: string
    sql: ${TABLE}."return_games_won" ;;
  }

  dimension: return_games_won_pct {
    type: string
    sql: ${TABLE}."return_games_won_pct" ;;
  }

  dimension: returns_played {
    type: string
    sql: ${TABLE}."returns_played" ;;
  }

  dimension: second_service_return_points_won {
    type: string
    sql: ${TABLE}."second_service_return_points_won" ;;
  }

  dimension: second_service_return_points_won_pct {
    type: string
    sql: ${TABLE}."second_service_return_points_won_pct" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
