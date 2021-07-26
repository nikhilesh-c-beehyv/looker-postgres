view: sub_periods {
  sql_table_name: public.sub_periods ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: period_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."period_id" ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}."score" ;;
  }

  dimension: sub_period_value {
    type: string
    sql: ${TABLE}."sub_period_value" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, periods.id, tennis_action_points.count]
  }
}
