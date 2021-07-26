view: document_package_entry {
  sql_table_name: public.document_package_entry ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_id" ;;
  }

  dimension: document_package_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_package_id" ;;
  }

  dimension: headline {
    type: string
    sql: ${TABLE}."headline" ;;
  }

  dimension: rank {
    type: string
    sql: ${TABLE}."rank" ;;
  }

  dimension: short_headline {
    type: string
    sql: ${TABLE}."short_headline" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, documents.id, document_packages.id, document_packages.package_name]
  }
}
