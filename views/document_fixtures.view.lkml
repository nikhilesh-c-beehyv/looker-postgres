view: document_fixtures {
  sql_table_name: public.document_fixtures ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: document_class_id {
    type: number
    sql: ${TABLE}."document_class_id" ;;
  }

  dimension: fixture_key {
    type: string
    sql: ${TABLE}."fixture_key" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
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
      name,
      publishers.publisher_name,
      publishers.id,
      document_fixtures_events.count,
      documents.count
    ]
  }
}
