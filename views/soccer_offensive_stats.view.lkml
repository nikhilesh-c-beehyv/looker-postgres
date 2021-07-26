view: soccer_offensive_stats {
  sql_table_name: public.soccer_offensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: assists_game_tying {
    type: string
    sql: ${TABLE}."assists_game_tying" ;;
  }

  dimension: assists_game_winning {
    type: string
    sql: ${TABLE}."assists_game_winning" ;;
  }

  dimension: assists_overtime {
    type: string
    sql: ${TABLE}."assists_overtime" ;;
  }

  dimension: assists_total {
    type: string
    sql: ${TABLE}."assists_total" ;;
  }

  dimension: corner_kicks {
    type: string
    sql: ${TABLE}."corner_kicks" ;;
  }

  dimension: giveaways {
    type: string
    sql: ${TABLE}."giveaways" ;;
  }

  dimension: goals_game_tying {
    type: string
    sql: ${TABLE}."goals_game_tying" ;;
  }

  dimension: goals_game_winning {
    type: string
    sql: ${TABLE}."goals_game_winning" ;;
  }

  dimension: goals_overtime {
    type: string
    sql: ${TABLE}."goals_overtime" ;;
  }

  dimension: goals_shootout {
    type: string
    sql: ${TABLE}."goals_shootout" ;;
  }

  dimension: goals_total {
    type: string
    sql: ${TABLE}."goals_total" ;;
  }

  dimension: hat_tricks {
    type: string
    sql: ${TABLE}."hat_tricks" ;;
  }

  dimension: offsides {
    type: string
    sql: ${TABLE}."offsides" ;;
  }

  dimension: points {
    type: string
    sql: ${TABLE}."points" ;;
  }

  dimension: shots_hit_frame {
    type: string
    sql: ${TABLE}."shots_hit_frame" ;;
  }

  dimension: shots_on_goal_total {
    type: string
    sql: ${TABLE}."shots_on_goal_total" ;;
  }

  dimension: shots_penalty_shot_missed {
    type: string
    sql: ${TABLE}."shots_penalty_shot_missed" ;;
  }

  dimension: shots_penalty_shot_percentage {
    type: string
    sql: ${TABLE}."shots_penalty_shot_percentage" ;;
  }

  dimension: shots_penalty_shot_scored {
    type: string
    sql: ${TABLE}."shots_penalty_shot_scored" ;;
  }

  dimension: shots_penalty_shot_taken {
    type: string
    sql: ${TABLE}."shots_penalty_shot_taken" ;;
  }

  dimension: shots_shootout_missed {
    type: string
    sql: ${TABLE}."shots_shootout_missed" ;;
  }

  dimension: shots_shootout_percentage {
    type: string
    sql: ${TABLE}."shots_shootout_percentage" ;;
  }

  dimension: shots_shootout_scored {
    type: string
    sql: ${TABLE}."shots_shootout_scored" ;;
  }

  dimension: shots_shootout_taken {
    type: string
    sql: ${TABLE}."shots_shootout_taken" ;;
  }

  dimension: shots_total {
    type: string
    sql: ${TABLE}."shots_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
