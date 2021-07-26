view: locations {
  sql_table_name: public.locations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}."country_code" ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}."longitude" ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}."timezone" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, addresses.count, bookmakers.count, sites.count]
  }
}
