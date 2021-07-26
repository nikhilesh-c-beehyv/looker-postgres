view: american_football_scoring_stats {
  sql_table_name: public.american_football_scoring_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: extra_points_attempts {
    type: string
    sql: ${TABLE}."extra_points_attempts" ;;
  }

  dimension: extra_points_blocked {
    type: string
    sql: ${TABLE}."extra_points_blocked" ;;
  }

  dimension: extra_points_made {
    type: string
    sql: ${TABLE}."extra_points_made" ;;
  }

  dimension: extra_points_missed {
    type: string
    sql: ${TABLE}."extra_points_missed" ;;
  }

  dimension: field_goal_attempts {
    type: string
    sql: ${TABLE}."field_goal_attempts" ;;
  }

  dimension: field_goals_blocked {
    type: string
    sql: ${TABLE}."field_goals_blocked" ;;
  }

  dimension: field_goals_made {
    type: string
    sql: ${TABLE}."field_goals_made" ;;
  }

  dimension: field_goals_missed {
    type: string
    sql: ${TABLE}."field_goals_missed" ;;
  }

  dimension: safeties_against {
    type: string
    sql: ${TABLE}."safeties_against" ;;
  }

  dimension: touchbacks_total {
    type: string
    sql: ${TABLE}."touchbacks_total" ;;
  }

  dimension: touchdowns_defensive {
    type: string
    sql: ${TABLE}."touchdowns_defensive" ;;
  }

  dimension: touchdowns_passing {
    type: string
    sql: ${TABLE}."touchdowns_passing" ;;
  }

  dimension: touchdowns_rushing {
    type: string
    sql: ${TABLE}."touchdowns_rushing" ;;
  }

  dimension: touchdowns_special_teams {
    type: string
    sql: ${TABLE}."touchdowns_special_teams" ;;
  }

  dimension: touchdowns_total {
    type: string
    sql: ${TABLE}."touchdowns_total" ;;
  }

  dimension: two_point_conversions_attempts {
    type: string
    sql: ${TABLE}."two_point_conversions_attempts" ;;
  }

  dimension: two_point_conversions_made {
    type: string
    sql: ${TABLE}."two_point_conversions_made" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
