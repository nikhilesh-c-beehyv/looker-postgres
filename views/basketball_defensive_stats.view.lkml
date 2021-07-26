view: basketball_defensive_stats {
  sql_table_name: public.basketball_defensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: blocks_per_game {
    type: string
    sql: ${TABLE}."blocks_per_game" ;;
  }

  dimension: blocks_total {
    type: string
    sql: ${TABLE}."blocks_total" ;;
  }

  dimension: steals_per_game {
    type: string
    sql: ${TABLE}."steals_per_game" ;;
  }

  dimension: steals_total {
    type: string
    sql: ${TABLE}."steals_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
