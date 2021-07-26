view: tennis_service_stats {
  sql_table_name: public.tennis_service_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: aces {
    type: string
    sql: ${TABLE}."aces" ;;
  }

  dimension: break_points_played {
    type: string
    sql: ${TABLE}."break_points_played" ;;
  }

  dimension: break_points_saved {
    type: string
    sql: ${TABLE}."break_points_saved" ;;
  }

  dimension: break_points_saved_pct {
    type: string
    sql: ${TABLE}."break_points_saved_pct" ;;
  }

  dimension: first_service_points_won {
    type: string
    sql: ${TABLE}."first_service_points_won" ;;
  }

  dimension: first_service_points_won_pct {
    type: string
    sql: ${TABLE}."first_service_points_won_pct" ;;
  }

  dimension: first_services_good {
    type: string
    sql: ${TABLE}."first_services_good" ;;
  }

  dimension: first_services_good_pct {
    type: string
    sql: ${TABLE}."first_services_good_pct" ;;
  }

  dimension: matches_played {
    type: string
    sql: ${TABLE}."matches_played" ;;
  }

  dimension: second_service_points_won {
    type: string
    sql: ${TABLE}."second_service_points_won" ;;
  }

  dimension: second_service_points_won_pct {
    type: string
    sql: ${TABLE}."second_service_points_won_pct" ;;
  }

  dimension: service_games_played {
    type: string
    sql: ${TABLE}."service_games_played" ;;
  }

  dimension: service_games_won {
    type: string
    sql: ${TABLE}."service_games_won" ;;
  }

  dimension: service_games_won_pct {
    type: string
    sql: ${TABLE}."service_games_won_pct" ;;
  }

  dimension: services_played {
    type: string
    sql: ${TABLE}."services_played" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
