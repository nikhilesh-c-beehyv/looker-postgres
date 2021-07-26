view: teams {
  sql_table_name: public.teams ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: home_site_id {
    type: number
    sql: ${TABLE}."home_site_id" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: team_key {
    type: string
    sql: ${TABLE}."team_key" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      publishers.publisher_name,
      publishers.id,
      person_event_metadata.count,
      team_phases.count,
      teams_documents.count,
      teams_media.count,
      wagering_moneylines.count,
      wagering_odds_lines.count,
      wagering_runlines.count,
      wagering_straight_spread_lines.count,
      wagering_total_score_lines.count
    ]
  }
}
