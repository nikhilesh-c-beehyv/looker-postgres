view: american_football_event_states {
  sql_table_name: public.american_football_event_states ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: clock_state {
    type: string
    sql: ${TABLE}."clock_state" ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}."context" ;;
  }

  dimension: current_state {
    type: number
    sql: ${TABLE}."current_state" ;;
  }

  dimension: distance_for_1st_down {
    type: number
    sql: ${TABLE}."distance_for_1st_down" ;;
  }

  dimension: down {
    type: number
    sql: ${TABLE}."down" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: field_line {
    type: number
    sql: ${TABLE}."field_line" ;;
  }

  dimension: field_side {
    type: string
    sql: ${TABLE}."field_side" ;;
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
    type: number
    sql: ${TABLE}."period_value" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: team_in_possession_id {
    type: number
    sql: ${TABLE}."team_in_possession_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.id, american_football_action_plays.count]
  }
}
