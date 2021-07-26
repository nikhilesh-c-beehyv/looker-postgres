view: basketball_rebounding_stats {
  sql_table_name: public.basketball_rebounding_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: rebounds_defensive {
    type: string
    sql: ${TABLE}."rebounds_defensive" ;;
  }

  dimension: rebounds_offensive {
    type: string
    sql: ${TABLE}."rebounds_offensive" ;;
  }

  dimension: rebounds_per_game {
    type: string
    sql: ${TABLE}."rebounds_per_game" ;;
  }

  dimension: rebounds_total {
    type: string
    sql: ${TABLE}."rebounds_total" ;;
  }

  dimension: team_rebounds_defensive {
    type: string
    sql: ${TABLE}."team_rebounds_defensive" ;;
  }

  dimension: team_rebounds_offensive {
    type: string
    sql: ${TABLE}."team_rebounds_offensive" ;;
  }

  dimension: team_rebounds_per_game {
    type: string
    sql: ${TABLE}."team_rebounds_per_game" ;;
  }

  dimension: team_rebounds_total {
    type: string
    sql: ${TABLE}."team_rebounds_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
