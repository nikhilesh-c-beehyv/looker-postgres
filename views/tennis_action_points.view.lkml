view: tennis_action_points {
  sql_table_name: public.tennis_action_points ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: sequence_number {
    type: string
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: sub_period_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."sub_period_id" ;;
  }

  dimension: win_type {
    type: string
    sql: ${TABLE}."win_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sub_periods.id, tennis_action_volleys.count]
  }
}
