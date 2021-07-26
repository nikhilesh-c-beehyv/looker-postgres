view: american_football_down_progress_stats {
  sql_table_name: public.american_football_down_progress_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: conversions_fourth_down {
    type: string
    sql: ${TABLE}."conversions_fourth_down" ;;
  }

  dimension: conversions_fourth_down_attempts {
    type: string
    sql: ${TABLE}."conversions_fourth_down_attempts" ;;
  }

  dimension: conversions_fourth_down_percentage {
    type: string
    sql: ${TABLE}."conversions_fourth_down_percentage" ;;
  }

  dimension: conversions_third_down {
    type: string
    sql: ${TABLE}."conversions_third_down" ;;
  }

  dimension: conversions_third_down_attempts {
    type: string
    sql: ${TABLE}."conversions_third_down_attempts" ;;
  }

  dimension: conversions_third_down_percentage {
    type: string
    sql: ${TABLE}."conversions_third_down_percentage" ;;
  }

  dimension: first_downs_pass {
    type: string
    sql: ${TABLE}."first_downs_pass" ;;
  }

  dimension: first_downs_penalty {
    type: string
    sql: ${TABLE}."first_downs_penalty" ;;
  }

  dimension: first_downs_run {
    type: string
    sql: ${TABLE}."first_downs_run" ;;
  }

  dimension: first_downs_total {
    type: string
    sql: ${TABLE}."first_downs_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
