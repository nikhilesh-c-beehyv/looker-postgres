view: baseball_action_substitutions {
  sql_table_name: public.baseball_action_substitutions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: person_original_id {
    type: number
    sql: ${TABLE}."person_original_id" ;;
  }

  dimension: person_original_lineup_slot {
    type: number
    sql: ${TABLE}."person_original_lineup_slot" ;;
  }

  dimension: person_original_position_id {
    type: number
    sql: ${TABLE}."person_original_position_id" ;;
  }

  dimension: person_replacing_id {
    type: number
    sql: ${TABLE}."person_replacing_id" ;;
  }

  dimension: person_replacing_lineup_slot {
    type: number
    sql: ${TABLE}."person_replacing_lineup_slot" ;;
  }

  dimension: person_replacing_position_id {
    type: number
    sql: ${TABLE}."person_replacing_position_id" ;;
  }

  dimension: person_type {
    type: string
    sql: ${TABLE}."person_type" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: substitution_reason {
    type: string
    sql: ${TABLE}."substitution_reason" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, baseball_event_states.id]
  }
}
