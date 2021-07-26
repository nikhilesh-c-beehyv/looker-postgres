view: periods {
  sql_table_name: public.periods ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: participant_event_id {
    type: number
    sql: ${TABLE}."participant_event_id" ;;
  }

  dimension: period_value {
    type: string
    sql: ${TABLE}."period_value" ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}."score" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sub_periods.count]
  }
}
