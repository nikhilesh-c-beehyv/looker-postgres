view: soccer_defensive_stats {
  sql_table_name: public.soccer_defensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: catches_punches {
    type: string
    sql: ${TABLE}."catches_punches" ;;
  }

  dimension: goals_against_average {
    type: string
    sql: ${TABLE}."goals_against_average" ;;
  }

  dimension: goals_against_total {
    type: string
    sql: ${TABLE}."goals_against_total" ;;
  }

  dimension: goals_penalty_shot_allowed {
    type: string
    sql: ${TABLE}."goals_penalty_shot_allowed" ;;
  }

  dimension: save_percentage {
    type: string
    sql: ${TABLE}."save_percentage" ;;
  }

  dimension: saves {
    type: string
    sql: ${TABLE}."saves" ;;
  }

  dimension: shots_blocked {
    type: string
    sql: ${TABLE}."shots_blocked" ;;
  }

  dimension: shots_on_goal_total {
    type: string
    sql: ${TABLE}."shots_on_goal_total" ;;
  }

  dimension: shots_penalty_shot_allowed {
    type: string
    sql: ${TABLE}."shots_penalty_shot_allowed" ;;
  }

  dimension: shots_shootout_allowed {
    type: string
    sql: ${TABLE}."shots_shootout_allowed" ;;
  }

  dimension: shots_shootout_total {
    type: string
    sql: ${TABLE}."shots_shootout_total" ;;
  }

  dimension: shutouts {
    type: string
    sql: ${TABLE}."shutouts" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
