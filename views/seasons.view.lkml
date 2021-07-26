view: seasons {
  sql_table_name: public.seasons ;;
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

  dimension: league_id {
    type: number
    sql: ${TABLE}."league_id" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: season_key {
    type: number
    sql: ${TABLE}."season_key" ;;
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

  measure: count {
    type: count
    drill_fields: [id, publishers.publisher_name, publishers.id, injury_phases.count, sub_seasons.count]
  }
}
