view: publishers {
  sql_table_name: public.publishers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: publisher_key {
    type: string
    sql: ${TABLE}."publisher_key" ;;
  }

  dimension: publisher_name {
    type: string
    sql: ${TABLE}."publisher_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      publisher_name,
      affiliations.count,
      bookmakers.count,
      document_fixtures.count,
      documents.count,
      events.count,
      media.count,
      persons.count,
      seasons.count,
      sites.count,
      standings.count,
      teams.count
    ]
  }
}
