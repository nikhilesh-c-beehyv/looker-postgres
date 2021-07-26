view: affiliations_documents {
  sql_table_name: public.affiliations_documents ;;

  dimension: affiliation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."affiliation_id" ;;
  }

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [documents.id, affiliations.id]
  }
}
