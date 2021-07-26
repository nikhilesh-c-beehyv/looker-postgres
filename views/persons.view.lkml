view: persons {
  sql_table_name: public.persons ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}."birth_date" ;;
  }

  dimension: birth_location_id {
    type: number
    sql: ${TABLE}."birth_location_id" ;;
  }

  dimension: death_date {
    type: string
    sql: ${TABLE}."death_date" ;;
  }

  dimension: death_location_id {
    type: number
    sql: ${TABLE}."death_location_id" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: hometown_location_id {
    type: number
    sql: ${TABLE}."hometown_location_id" ;;
  }

  dimension: person_key {
    type: string
    sql: ${TABLE}."person_key" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: residence_location_id {
    type: number
    sql: ${TABLE}."residence_location_id" ;;
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
      american_football_action_participants.count,
      ice_hockey_action_participants.count,
      injury_phases.count,
      person_event_metadata.count,
      person_phases.count,
      persons_documents.count,
      persons_media.count,
      wagering_moneylines.count,
      wagering_odds_lines.count,
      wagering_runlines.count,
      wagering_straight_spread_lines.count,
      wagering_total_score_lines.count
    ]
  }
}
