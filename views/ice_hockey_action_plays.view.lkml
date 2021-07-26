view: ice_hockey_action_plays {
  sql_table_name: public.ice_hockey_action_plays ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension: ice_hockey_event_state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ice_hockey_event_state_id" ;;
  }

  dimension: play_result {
    type: string
    sql: ${TABLE}."play_result" ;;
  }

  dimension: play_type {
    type: string
    sql: ${TABLE}."play_type" ;;
  }

  dimension: score_attempt_type {
    type: string
    sql: ${TABLE}."score_attempt_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ice_hockey_event_states.id, ice_hockey_action_participants.count]
  }
}
