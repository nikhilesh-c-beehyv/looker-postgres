view: key_roots {
  sql_table_name: public.key_roots ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: key_type {
    type: string
    sql: ${TABLE}."key_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, key_aliases.count]
  }
}
