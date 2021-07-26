view: events {
  sql_table_name: public.events ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: attendance {
    type: string
    sql: ${TABLE}."attendance" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."duration" ;;
  }

  dimension: event_key {
    type: string
    sql: ${TABLE}."event_key" ;;
  }

  dimension: event_status {
    type: string
    sql: ${TABLE}."event_status" ;;
  }

  dimension_group: last_update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."last_update" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: site_alignment {
    type: string
    sql: ${TABLE}."site_alignment" ;;
  }

  dimension: site_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."site_id" ;;
  }

  dimension_group: start_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."start_date_time" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      sites.id,
      publishers.publisher_name,
      publishers.id,
      affiliations_events.count,
      american_football_event_states.count,
      baseball_event_states.count,
      basketball_event_states.count,
      document_fixtures_events.count,
      events_documents.count,
      events_media.count,
      events_sub_seasons.count,
      ice_hockey_event_states.count,
      motor_racing_event_states.count,
      participants_events.count,
      person_event_metadata.count,
      soccer_event_states.count,
      tennis_event_states.count,
      wagering_moneylines.count,
      wagering_odds_lines.count,
      wagering_runlines.count,
      wagering_straight_spread_lines.count,
      wagering_total_score_lines.count,
      weather_conditions.count
    ]
  }
}
