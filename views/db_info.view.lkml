view: db_info {
  sql_table_name: public.db_info ;;

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
