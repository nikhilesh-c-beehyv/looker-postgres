view: tennis_action_volleys {
  sql_table_name: public.tennis_action_volleys ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: landing_location {
    type: string
    sql: ${TABLE}."landing_location" ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}."result" ;;
  }

  dimension: sequence_number {
    type: string
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: spin_type {
    type: string
    sql: ${TABLE}."spin_type" ;;
  }

  dimension: swing_type {
    type: string
    sql: ${TABLE}."swing_type" ;;
  }

  dimension: tennis_action_points_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."tennis_action_points_id" ;;
  }

  dimension: trajectory_details {
    type: string
    sql: ${TABLE}."trajectory_details" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tennis_action_points.id]
  }
}
