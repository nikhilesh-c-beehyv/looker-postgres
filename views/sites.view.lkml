view: sites {
  sql_table_name: public.sites ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."location_id" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: site_key {
    type: number
    sql: ${TABLE}."site_key" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, locations.id, publishers.publisher_name, publishers.id, events.count]
  }
}
