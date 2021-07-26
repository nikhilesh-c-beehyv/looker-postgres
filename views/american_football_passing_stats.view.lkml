view: american_football_passing_stats {
  sql_table_name: public.american_football_passing_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: passer_rating {
    type: string
    sql: ${TABLE}."passer_rating" ;;
  }

  dimension: passes_attempts {
    type: string
    sql: ${TABLE}."passes_attempts" ;;
  }

  dimension: passes_average_yards_per {
    type: string
    sql: ${TABLE}."passes_average_yards_per" ;;
  }

  dimension: passes_completions {
    type: string
    sql: ${TABLE}."passes_completions" ;;
  }

  dimension: passes_interceptions {
    type: string
    sql: ${TABLE}."passes_interceptions" ;;
  }

  dimension: passes_interceptions_percentage {
    type: string
    sql: ${TABLE}."passes_interceptions_percentage" ;;
  }

  dimension: passes_longest {
    type: string
    sql: ${TABLE}."passes_longest" ;;
  }

  dimension: passes_percentage {
    type: string
    sql: ${TABLE}."passes_percentage" ;;
  }

  dimension: passes_touchdowns {
    type: string
    sql: ${TABLE}."passes_touchdowns" ;;
  }

  dimension: passes_touchdowns_percentage {
    type: string
    sql: ${TABLE}."passes_touchdowns_percentage" ;;
  }

  dimension: passes_yards_gross {
    type: string
    sql: ${TABLE}."passes_yards_gross" ;;
  }

  dimension: passes_yards_lost {
    type: string
    sql: ${TABLE}."passes_yards_lost" ;;
  }

  dimension: passes_yards_net {
    type: string
    sql: ${TABLE}."passes_yards_net" ;;
  }

  dimension: receptions_average_yards_per {
    type: string
    sql: ${TABLE}."receptions_average_yards_per" ;;
  }

  dimension: receptions_first_down {
    type: string
    sql: ${TABLE}."receptions_first_down" ;;
  }

  dimension: receptions_longest {
    type: string
    sql: ${TABLE}."receptions_longest" ;;
  }

  dimension: receptions_total {
    type: string
    sql: ${TABLE}."receptions_total" ;;
  }

  dimension: receptions_touchdowns {
    type: string
    sql: ${TABLE}."receptions_touchdowns" ;;
  }

  dimension: receptions_yards {
    type: string
    sql: ${TABLE}."receptions_yards" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
