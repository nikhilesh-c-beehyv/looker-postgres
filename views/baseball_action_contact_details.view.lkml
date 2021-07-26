view: baseball_action_contact_details {
  sql_table_name: public.baseball_action_contact_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: baseball_action_pitch_id {
    type: number
    sql: ${TABLE}."baseball_action_pitch_id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }

  dimension: strength {
    type: string
    sql: ${TABLE}."strength" ;;
  }

  dimension: trajectory_coordinates {
    type: string
    sql: ${TABLE}."trajectory_coordinates" ;;
  }

  dimension: trajectory_formula {
    type: string
    sql: ${TABLE}."trajectory_formula" ;;
  }

  dimension: velocity {
    type: number
    sql: ${TABLE}."velocity" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
