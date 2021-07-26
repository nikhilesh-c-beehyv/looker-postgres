view: motor_racing_event_states {
  sql_table_name: public.motor_racing_event_states ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}."context" ;;
  }

  dimension: current_state {
    type: number
    sql: ${TABLE}."current_state" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: flag_state {
    type: string
    sql: ${TABLE}."flag_state" ;;
  }

  dimension: lap {
    type: string
    sql: ${TABLE}."lap" ;;
  }

  dimension: laps_remaining {
    type: string
    sql: ${TABLE}."laps_remaining" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: time_elapsed {
    type: string
    sql: ${TABLE}."time_elapsed" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.id]
  }
}
