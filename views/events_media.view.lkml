view: events_media {
  sql_table_name: public.events_media ;;

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [media.id, events.id]
  }
}
