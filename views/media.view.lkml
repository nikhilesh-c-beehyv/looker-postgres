view: media {
  sql_table_name: public.media ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: creation_location_id {
    type: number
    sql: ${TABLE}."creation_location_id" ;;
  }

  dimension: credit_id {
    type: number
    sql: ${TABLE}."credit_id" ;;
  }

  dimension: date_time {
    type: string
    sql: ${TABLE}."date_time" ;;
  }

  dimension_group: db_loading_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."db_loading_date_time" ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}."media_type" ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}."object_id" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: revision_id {
    type: number
    sql: ${TABLE}."revision_id" ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}."source_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      publishers.publisher_name,
      publishers.id,
      affiliations_media.count,
      documents_media.count,
      events_media.count,
      media_captions.count,
      media_contents.count,
      media_keywords.count,
      persons_media.count,
      teams_media.count
    ]
  }
}
