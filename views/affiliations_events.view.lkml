view: affiliations_events {
  sql_table_name: public.affiliations_events ;;

  dimension: affiliation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."affiliation_id" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [events.id, affiliations.id]
  }
}
