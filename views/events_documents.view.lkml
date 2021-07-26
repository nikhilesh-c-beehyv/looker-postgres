view: events_documents {
  sql_table_name: public.events_documents ;;

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_id" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [documents.id, events.id]
  }
}
