view: core_stats {
  sql_table_name: public.core_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}."score" ;;
  }

  dimension: score_attempts {
    type: string
    sql: ${TABLE}."score_attempts" ;;
  }

  dimension: score_attempts_opposing {
    type: string
    sql: ${TABLE}."score_attempts_opposing" ;;
  }

  dimension: score_opposing {
    type: string
    sql: ${TABLE}."score_opposing" ;;
  }

  dimension: score_percentage {
    type: string
    sql: ${TABLE}."score_percentage" ;;
  }

  dimension: score_percentage_opposing {
    type: string
    sql: ${TABLE}."score_percentage_opposing" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
