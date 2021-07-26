view: positions {
  sql_table_name: public.positions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}."abbreviation" ;;
  }

  dimension: affiliation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."affiliation_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, affiliations.id, baseball_defensive_players.count, core_person_stats.count, person_event_metadata.count]
  }
}
