view: tennis_event_states {
  sql_table_name: public.tennis_event_states ;;
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

  dimension: game {
    type: string
    sql: ${TABLE}."game" ;;
  }

  dimension: receiver_person_id {
    type: number
    sql: ${TABLE}."receiver_person_id" ;;
  }

  dimension: receiver_score {
    type: string
    sql: ${TABLE}."receiver_score" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: server_person_id {
    type: number
    sql: ${TABLE}."server_person_id" ;;
  }

  dimension: server_score {
    type: string
    sql: ${TABLE}."server_score" ;;
  }

  dimension: service_number {
    type: string
    sql: ${TABLE}."service_number" ;;
  }

  dimension: tennis_set {
    type: string
    sql: ${TABLE}."tennis_set" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.id]
  }
}
