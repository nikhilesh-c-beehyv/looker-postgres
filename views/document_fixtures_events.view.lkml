view: document_fixtures_events {
  sql_table_name: public.document_fixtures_events ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: document_fixture_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_fixture_id" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
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

  dimension: latest_document_id {
    type: number
    sql: ${TABLE}."latest_document_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, document_fixtures.name, document_fixtures.id, events.id]
  }
}
