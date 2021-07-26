view: basketball_team_stats {
  sql_table_name: public.basketball_team_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: fouls_total {
    type: string
    sql: ${TABLE}."fouls_total" ;;
  }

  dimension: largest_lead {
    type: string
    sql: ${TABLE}."largest_lead" ;;
  }

  dimension: timeouts_left {
    type: string
    sql: ${TABLE}."timeouts_left" ;;
  }

  dimension: turnover_margin {
    type: string
    sql: ${TABLE}."turnover_margin" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
