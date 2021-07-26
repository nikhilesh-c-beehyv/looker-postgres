view: ice_hockey_offensive_stats {
  sql_table_name: public.ice_hockey_offensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: assists {
    type: string
    sql: ${TABLE}."assists" ;;
  }

  dimension: faceoff_losses {
    type: string
    sql: ${TABLE}."faceoff_losses" ;;
  }

  dimension: faceoff_win_percentage {
    type: string
    sql: ${TABLE}."faceoff_win_percentage" ;;
  }

  dimension: faceoff_wins {
    type: string
    sql: ${TABLE}."faceoff_wins" ;;
  }

  dimension: giveaways {
    type: string
    sql: ${TABLE}."giveaways" ;;
  }

  dimension: goals_empty_net {
    type: string
    sql: ${TABLE}."goals_empty_net" ;;
  }

  dimension: goals_even_strength {
    type: string
    sql: ${TABLE}."goals_even_strength" ;;
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

  dimension: goals_penalty_shot {
    type: string
    sql: ${TABLE}."goals_penalty_shot" ;;
  }

  dimension: goals_power_play {
    type: string
    sql: ${TABLE}."goals_power_play" ;;
  }

  dimension: goals_shootout {
    type: string
    sql: ${TABLE}."goals_shootout" ;;
  }

  dimension: goals_short_handed {
    type: string
    sql: ${TABLE}."goals_short_handed" ;;
  }

  dimension: minutes_power_play {
    type: string
    sql: ${TABLE}."minutes_power_play" ;;
  }

  dimension: points {
    type: string
    sql: ${TABLE}."points" ;;
  }

  dimension: power_play_amount {
    type: string
    sql: ${TABLE}."power_play_amount" ;;
  }

  dimension: power_play_percentage {
    type: string
    sql: ${TABLE}."power_play_percentage" ;;
  }

  dimension: scoring_chances {
    type: string
    sql: ${TABLE}."scoring_chances" ;;
  }

  dimension: shots_penalty_shot_missed {
    type: string
    sql: ${TABLE}."shots_penalty_shot_missed" ;;
  }

  dimension: shots_penalty_shot_percentage {
    type: string
    sql: ${TABLE}."shots_penalty_shot_percentage" ;;
  }

  dimension: shots_penalty_shot_taken {
    type: string
    sql: ${TABLE}."shots_penalty_shot_taken" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
