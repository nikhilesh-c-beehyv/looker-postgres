view: participants_events {
  sql_table_name: public.participants_events ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: alignment {
    type: string
    sql: ${TABLE}."alignment" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: event_outcome {
    type: string
    sql: ${TABLE}."event_outcome" ;;
  }

  dimension: participant_id {
    type: number
    sql: ${TABLE}."participant_id" ;;
  }

  dimension: participant_type {
    type: string
    sql: ${TABLE}."participant_type" ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."rank" ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}."score" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.id]
  }
}
