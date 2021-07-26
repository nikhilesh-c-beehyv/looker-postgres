view: document_packages {
  sql_table_name: public.document_packages ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."date_time" ;;
  }

  dimension: package_key {
    type: string
    sql: ${TABLE}."package_key" ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}."package_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, package_name, document_package_entry.count]
  }
}
