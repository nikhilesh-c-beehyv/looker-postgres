view: media_contents {
  sql_table_name: public.media_contents ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."duration" ;;
  }

  dimension: file_size {
    type: string
    sql: ${TABLE}."file_size" ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}."format" ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}."height" ;;
  }

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}."mime_type" ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}."object" ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}."resolution" ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}."width" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, media.id]
  }
}
