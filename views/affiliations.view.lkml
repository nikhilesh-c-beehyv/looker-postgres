view: affiliations {
  sql_table_name: public.affiliations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: affiliation_key {
    type: string
    sql: ${TABLE}."affiliation_key" ;;
  }

  dimension: affiliation_type {
    type: string
    sql: ${TABLE}."affiliation_type" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
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
      affiliation_phases.count,
      affiliations_documents.count,
      affiliations_events.count,
      affiliations_media.count,
      positions.count,
      standing_subgroups.count,
      standings.count,
      team_phases.count
    ]
  }
}
