view: soccer_event_states {
  sql_table_name: public.soccer_event_states ;;
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

  dimension: minutes_elapsed {
    type: string
    sql: ${TABLE}."minutes_elapsed" ;;
  }

  dimension: period_minute_elapsed {
    type: string
    sql: ${TABLE}."period_minute_elapsed" ;;
  }

  dimension: period_time_elapsed {
    type: string
    sql: ${TABLE}."period_time_elapsed" ;;
  }

  dimension: period_time_remaining {
    type: string
    sql: ${TABLE}."period_time_remaining" ;;
  }

  dimension: period_value {
    type: string
    sql: ${TABLE}."period_value" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."sequence_number" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.id]
  }
}
