view: basketball_offensive_stats {
  sql_table_name: public.basketball_offensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: assists_per_game {
    type: string
    sql: ${TABLE}."assists_per_game" ;;
  }

  dimension: assists_total {
    type: string
    sql: ${TABLE}."assists_total" ;;
  }

  dimension: field_goals_attempted {
    type: number
    sql: ${TABLE}."field_goals_attempted" ;;
  }

  dimension: field_goals_attempted_per_game {
    type: string
    sql: ${TABLE}."field_goals_attempted_per_game" ;;
  }

  dimension: field_goals_made {
    type: number
    sql: ${TABLE}."field_goals_made" ;;
  }

  dimension: field_goals_per_game {
    type: string
    sql: ${TABLE}."field_goals_per_game" ;;
  }

  dimension: field_goals_percentage {
    type: string
    sql: ${TABLE}."field_goals_percentage" ;;
  }

  dimension: field_goals_percentage_adjusted {
    type: string
    sql: ${TABLE}."field_goals_percentage_adjusted" ;;
  }

  dimension: free_throws_attempted {
    type: string
    sql: ${TABLE}."free_throws_attempted" ;;
  }

  dimension: free_throws_attempted_per_game {
    type: string
    sql: ${TABLE}."free_throws_attempted_per_game" ;;
  }

  dimension: free_throws_made {
    type: string
    sql: ${TABLE}."free_throws_made" ;;
  }

  dimension: free_throws_per_game {
    type: string
    sql: ${TABLE}."free_throws_per_game" ;;
  }

  dimension: free_throws_percentage {
    type: string
    sql: ${TABLE}."free_throws_percentage" ;;
  }

  dimension: points_scored_in_paint {
    type: string
    sql: ${TABLE}."points_scored_in_paint" ;;
  }

  dimension: points_scored_off_turnovers {
    type: string
    sql: ${TABLE}."points_scored_off_turnovers" ;;
  }

  dimension: points_scored_on_fast_break {
    type: string
    sql: ${TABLE}."points_scored_on_fast_break" ;;
  }

  dimension: points_scored_on_second_chance {
    type: string
    sql: ${TABLE}."points_scored_on_second_chance" ;;
  }

  dimension: points_scored_per_game {
    type: string
    sql: ${TABLE}."points_scored_per_game" ;;
  }

  dimension: points_scored_total {
    type: string
    sql: ${TABLE}."points_scored_total" ;;
  }

  dimension: three_pointers_attempted {
    type: number
    sql: ${TABLE}."three_pointers_attempted" ;;
  }

  dimension: three_pointers_attempted_per_game {
    type: string
    sql: ${TABLE}."three_pointers_attempted_per_game" ;;
  }

  dimension: three_pointers_made {
    type: number
    sql: ${TABLE}."three_pointers_made" ;;
  }

  dimension: three_pointers_per_game {
    type: string
    sql: ${TABLE}."three_pointers_per_game" ;;
  }

  dimension: three_pointers_percentage {
    type: string
    sql: ${TABLE}."three_pointers_percentage" ;;
  }

  dimension: turnovers_per_game {
    type: string
    sql: ${TABLE}."turnovers_per_game" ;;
  }

  dimension: turnovers_total {
    type: string
    sql: ${TABLE}."turnovers_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
