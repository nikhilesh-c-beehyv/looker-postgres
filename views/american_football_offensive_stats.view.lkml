view: american_football_offensive_stats {
  sql_table_name: public.american_football_offensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: offensive_plays_average_yards_per {
    type: string
    sql: ${TABLE}."offensive_plays_average_yards_per" ;;
  }

  dimension: offensive_plays_number {
    type: string
    sql: ${TABLE}."offensive_plays_number" ;;
  }

  dimension: offensive_plays_yards {
    type: string
    sql: ${TABLE}."offensive_plays_yards" ;;
  }

  dimension: possession_duration {
    type: string
    sql: ${TABLE}."possession_duration" ;;
  }

  dimension: turnovers_giveaway {
    type: string
    sql: ${TABLE}."turnovers_giveaway" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
