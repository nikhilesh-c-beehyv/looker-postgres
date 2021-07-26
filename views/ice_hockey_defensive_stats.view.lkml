view: ice_hockey_defensive_stats {
  sql_table_name: public.ice_hockey_defensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: goals_against_average {
    type: string
    sql: ${TABLE}."goals_against_average" ;;
  }

  dimension: goals_empty_net_allowed {
    type: string
    sql: ${TABLE}."goals_empty_net_allowed" ;;
  }

  dimension: goals_penalty_shot_allowed {
    type: string
    sql: ${TABLE}."goals_penalty_shot_allowed" ;;
  }

  dimension: goals_power_play_allowed {
    type: string
    sql: ${TABLE}."goals_power_play_allowed" ;;
  }

  dimension: goals_shootout_allowed {
    type: string
    sql: ${TABLE}."goals_shootout_allowed" ;;
  }

  dimension: goals_short_handed_allowed {
    type: string
    sql: ${TABLE}."goals_short_handed_allowed" ;;
  }

  dimension: hits {
    type: string
    sql: ${TABLE}."hits" ;;
  }

  dimension: minutes_penalty_killing {
    type: string
    sql: ${TABLE}."minutes_penalty_killing" ;;
  }

  dimension: penalty_killing_amount {
    type: string
    sql: ${TABLE}."penalty_killing_amount" ;;
  }

  dimension: penalty_killing_percentage {
    type: string
    sql: ${TABLE}."penalty_killing_percentage" ;;
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

  dimension: shots_penalty_shot_allowed {
    type: string
    sql: ${TABLE}."shots_penalty_shot_allowed" ;;
  }

  dimension: shots_power_play_allowed {
    type: string
    sql: ${TABLE}."shots_power_play_allowed" ;;
  }

  dimension: shots_shootout_allowed {
    type: string
    sql: ${TABLE}."shots_shootout_allowed" ;;
  }

  dimension: shutouts {
    type: string
    sql: ${TABLE}."shutouts" ;;
  }

  dimension: takeaways {
    type: string
    sql: ${TABLE}."takeaways" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
