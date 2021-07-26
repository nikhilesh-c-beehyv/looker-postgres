view: events_sub_seasons {
  sql_table_name: public.events_sub_seasons ;;

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: sub_season_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."sub_season_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [events.id, sub_seasons.id]
  }
}
