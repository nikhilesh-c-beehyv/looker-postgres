view: american_football_action_plays {
  sql_table_name: public.american_football_action_plays ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: american_football_event_state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."american_football_event_state_id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension: drive_result {
    type: string
    sql: ${TABLE}."drive_result" ;;
  }

  dimension: play_type {
    type: string
    sql: ${TABLE}."play_type" ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}."points" ;;
  }

  dimension: score_attempt_type {
    type: string
    sql: ${TABLE}."score_attempt_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, american_football_event_states.id, american_football_action_participants.count]
  }
}
