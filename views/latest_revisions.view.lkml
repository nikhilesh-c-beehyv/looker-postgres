view: latest_revisions {
  sql_table_name: public.latest_revisions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: latest_document_id {
    type: number
    sql: ${TABLE}."latest_document_id" ;;
  }

  dimension: revision_id {
    type: string
    sql: ${TABLE}."revision_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
