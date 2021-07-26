view: document_contents {
  sql_table_name: public.document_contents ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: abstract {
    type: string
    sql: ${TABLE}."abstract" ;;
  }

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_id" ;;
  }

  dimension: sportsml {
    type: string
    sql: ${TABLE}."sportsml" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, documents.id]
  }
}
