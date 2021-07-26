view: roles {
  sql_table_name: public.roles ;;
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

  dimension: role_key {
    type: string
    sql: ${TABLE}."role_key" ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}."role_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, role_name, person_event_metadata.count, person_phases.count, team_phases.count]
  }
}
