view: documents_media {
  sql_table_name: public.documents_media ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_id" ;;
  }

  dimension: media_caption_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_caption_id" ;;
  }

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, media_captions.id, documents.id, media.id]
  }
}
