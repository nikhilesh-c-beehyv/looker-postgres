view: person_event_metadata {
  sql_table_name: public.person_event_metadata ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: health {
    type: string
    sql: ${TABLE}."health" ;;
  }

  dimension: lineup_slot {
    type: number
    sql: ${TABLE}."lineup_slot" ;;
  }

  dimension: lineup_slot_sequence {
    type: number
    sql: ${TABLE}."lineup_slot_sequence" ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."person_id" ;;
  }

  dimension: position_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."position_id" ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."role_id" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."team_id" ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}."weight" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      persons.id,
      teams.id,
      positions.id,
      roles.id,
      roles.role_name,
      events.id
    ]
  }
}
