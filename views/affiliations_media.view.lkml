view: affiliations_media {
  sql_table_name: public.affiliations_media ;;

  dimension: affiliation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."affiliation_id" ;;
  }

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [media.id, affiliations.id]
  }
}
