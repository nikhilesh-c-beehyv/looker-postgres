view: sub_seasons {
  sql_table_name: public.sub_seasons ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: end_date {
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
    sql: ${TABLE}."end_date_time" ;;
  }

  dimension: season_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."season_id" ;;
  }

  dimension_group: start_date {
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
    sql: ${TABLE}."start_date_time" ;;
  }

  dimension: sub_season_key {
    type: string
    sql: ${TABLE}."sub_season_key" ;;
  }

  dimension: sub_season_type {
    type: string
    sql: ${TABLE}."sub_season_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, seasons.id, events_sub_seasons.count, standings.count]
  }
}
