view: american_football_special_teams_stats {
  sql_table_name: public.american_football_special_teams_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: fair_catches {
    type: string
    sql: ${TABLE}."fair_catches" ;;
  }

  dimension: punts_average {
    type: string
    sql: ${TABLE}."punts_average" ;;
  }

  dimension: punts_blocked {
    type: string
    sql: ${TABLE}."punts_blocked" ;;
  }

  dimension: punts_inside_20 {
    type: string
    sql: ${TABLE}."punts_inside_20" ;;
  }

  dimension: punts_inside_20_percentage {
    type: string
    sql: ${TABLE}."punts_inside_20_percentage" ;;
  }

  dimension: punts_longest {
    type: string
    sql: ${TABLE}."punts_longest" ;;
  }

  dimension: punts_total {
    type: string
    sql: ${TABLE}."punts_total" ;;
  }

  dimension: punts_yards_gross {
    type: string
    sql: ${TABLE}."punts_yards_gross" ;;
  }

  dimension: punts_yards_net {
    type: string
    sql: ${TABLE}."punts_yards_net" ;;
  }

  dimension: returns_kickoff_average {
    type: string
    sql: ${TABLE}."returns_kickoff_average" ;;
  }

  dimension: returns_kickoff_longest {
    type: string
    sql: ${TABLE}."returns_kickoff_longest" ;;
  }

  dimension: returns_kickoff_total {
    type: string
    sql: ${TABLE}."returns_kickoff_total" ;;
  }

  dimension: returns_kickoff_touchdown {
    type: string
    sql: ${TABLE}."returns_kickoff_touchdown" ;;
  }

  dimension: returns_kickoff_yards {
    type: string
    sql: ${TABLE}."returns_kickoff_yards" ;;
  }

  dimension: returns_punt_average {
    type: string
    sql: ${TABLE}."returns_punt_average" ;;
  }

  dimension: returns_punt_longest {
    type: string
    sql: ${TABLE}."returns_punt_longest" ;;
  }

  dimension: returns_punt_total {
    type: string
    sql: ${TABLE}."returns_punt_total" ;;
  }

  dimension: returns_punt_touchdown {
    type: string
    sql: ${TABLE}."returns_punt_touchdown" ;;
  }

  dimension: returns_punt_yards {
    type: string
    sql: ${TABLE}."returns_punt_yards" ;;
  }

  dimension: returns_total {
    type: string
    sql: ${TABLE}."returns_total" ;;
  }

  dimension: returns_yards {
    type: string
    sql: ${TABLE}."returns_yards" ;;
  }

  dimension: touchbacks_interceptions {
    type: string
    sql: ${TABLE}."touchbacks_interceptions" ;;
  }

  dimension: touchbacks_interceptions_percentage {
    type: string
    sql: ${TABLE}."touchbacks_interceptions_percentage" ;;
  }

  dimension: touchbacks_kickoffs {
    type: string
    sql: ${TABLE}."touchbacks_kickoffs" ;;
  }

  dimension: touchbacks_kickoffs_percentage {
    type: string
    sql: ${TABLE}."touchbacks_kickoffs_percentage" ;;
  }

  dimension: touchbacks_punts {
    type: string
    sql: ${TABLE}."touchbacks_punts" ;;
  }

  dimension: touchbacks_punts_percentage {
    type: string
    sql: ${TABLE}."touchbacks_punts_percentage" ;;
  }

  dimension: touchbacks_total {
    type: string
    sql: ${TABLE}."touchbacks_total" ;;
  }

  dimension: touchbacks_total_percentage {
    type: string
    sql: ${TABLE}."touchbacks_total_percentage" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
