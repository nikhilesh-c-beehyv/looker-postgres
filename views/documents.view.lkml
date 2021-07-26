view: documents {
  sql_table_name: public.documents ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date_time" ;;
  }

  dimension_group: db_loading_date {
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
    sql: ${TABLE}."db_loading_date_time" ;;
  }

  dimension: doc_id {
    type: string
    sql: ${TABLE}."doc_id" ;;
  }

  dimension: document_fixture_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_fixture_id" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."language" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."priority" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: revision_id {
    type: string
    sql: ${TABLE}."revision_id" ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}."source_id" ;;
  }

  dimension: stats_coverage {
    type: string
    sql: ${TABLE}."stats_coverage" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
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
      document_fixtures.name,
      document_fixtures.id,
      affiliations_documents.count,
      document_contents.count,
      document_package_entry.count,
      documents_media.count,
      events_documents.count,
      persons_documents.count,
      teams_documents.count
    ]
  }
}
