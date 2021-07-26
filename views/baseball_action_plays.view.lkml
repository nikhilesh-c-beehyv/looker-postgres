view: baseball_action_plays {
  sql_table_name: public.baseball_action_plays ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: baseball_defensive_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."baseball_defensive_group_id" ;;
  }

  dimension: baseball_event_state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."baseball_event_state_id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension: earned_runs_scored {
    type: string
    sql: ${TABLE}."earned_runs_scored" ;;
  }

  dimension: notation {
    type: string
    sql: ${TABLE}."notation" ;;
  }

  dimension: notation_yaml {
    type: string
    sql: ${TABLE}."notation_yaml" ;;
  }

  dimension: outs_recorded {
    type: number
    sql: ${TABLE}."outs_recorded" ;;
  }

  dimension: play_type {
    type: string
    sql: ${TABLE}."play_type" ;;
  }

  dimension: rbi {
    type: number
    sql: ${TABLE}."rbi" ;;
  }

  dimension: runner_on_first_advance {
    type: number
    sql: ${TABLE}."runner_on_first_advance" ;;
  }

  dimension: runner_on_second_advance {
    type: number
    sql: ${TABLE}."runner_on_second_advance" ;;
  }

  dimension: runner_on_third_advance {
    type: number
    sql: ${TABLE}."runner_on_third_advance" ;;
  }

  dimension: runs_scored {
    type: number
    sql: ${TABLE}."runs_scored" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, baseball_event_states.id, baseball_defensive_group.id, baseball_action_pitches.count]
  }
}
