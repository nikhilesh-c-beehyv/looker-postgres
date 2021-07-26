view: persons_documents {
  sql_table_name: public.persons_documents ;;

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_id" ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."person_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [persons.id, documents.id]
  }
}
