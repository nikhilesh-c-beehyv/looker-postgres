view: persons_media {
  sql_table_name: public.persons_media ;;

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."person_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [persons.id, media.id]
  }
}
