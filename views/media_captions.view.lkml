view: media_captions {
  sql_table_name: public.media_captions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: caption {
    type: string
    sql: ${TABLE}."caption" ;;
  }

  dimension: caption_author_id {
    type: number
    sql: ${TABLE}."caption_author_id" ;;
  }

  dimension: caption_size {
    type: string
    sql: ${TABLE}."caption_size" ;;
  }

  dimension: caption_type {
    type: string
    sql: ${TABLE}."caption_type" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."language" ;;
  }

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, media.id, documents_media.count]
  }
}
