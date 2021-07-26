view: american_football_sacks_against_stats {
  sql_table_name: public.american_football_sacks_against_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: sacks_against_total {
    type: string
    sql: ${TABLE}."sacks_against_total" ;;
  }

  dimension: sacks_against_yards {
    type: string
    sql: ${TABLE}."sacks_against_yards" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
