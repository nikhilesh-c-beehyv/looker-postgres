view: american_football_defensive_stats {
  sql_table_name: public.american_football_defensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: interceptions_average {
    type: string
    sql: ${TABLE}."interceptions_average" ;;
  }

  dimension: interceptions_longest {
    type: string
    sql: ${TABLE}."interceptions_longest" ;;
  }

  dimension: interceptions_total {
    type: string
    sql: ${TABLE}."interceptions_total" ;;
  }

  dimension: interceptions_touchdown {
    type: string
    sql: ${TABLE}."interceptions_touchdown" ;;
  }

  dimension: interceptions_yards {
    type: string
    sql: ${TABLE}."interceptions_yards" ;;
  }

  dimension: passes_defensed {
    type: string
    sql: ${TABLE}."passes_defensed" ;;
  }

  dimension: quarterback_hurries {
    type: string
    sql: ${TABLE}."quarterback_hurries" ;;
  }

  dimension: sacks_total {
    type: string
    sql: ${TABLE}."sacks_total" ;;
  }

  dimension: sacks_yards {
    type: string
    sql: ${TABLE}."sacks_yards" ;;
  }

  dimension: tackles_assists {
    type: string
    sql: ${TABLE}."tackles_assists" ;;
  }

  dimension: tackles_solo {
    type: string
    sql: ${TABLE}."tackles_solo" ;;
  }

  dimension: tackles_total {
    type: string
    sql: ${TABLE}."tackles_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
