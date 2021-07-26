view: media_keywords {
  sql_table_name: public.media_keywords ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}."keyword" ;;
  }

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, media.id]
  }
}
