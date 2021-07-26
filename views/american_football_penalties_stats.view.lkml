view: american_football_penalties_stats {
  sql_table_name: public.american_football_penalties_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: penalties_total {
    type: string
    sql: ${TABLE}."penalties_total" ;;
  }

  dimension: penalty_first_downs {
    type: string
    sql: ${TABLE}."penalty_first_downs" ;;
  }

  dimension: penalty_yards {
    type: string
    sql: ${TABLE}."penalty_yards" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
