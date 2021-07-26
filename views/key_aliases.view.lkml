view: key_aliases {
  sql_table_name: public.key_aliases ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: key_id {
    type: number
    sql: ${TABLE}."key_id" ;;
  }

  dimension: key_root_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."key_root_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, key_roots.id]
  }
}
