view: injury_phases {
  sql_table_name: public.injury_phases ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: disabled_list {
    type: string
    sql: ${TABLE}."disabled_list" ;;
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

  dimension: injury_comment {
    type: string
    sql: ${TABLE}."injury_comment" ;;
  }

  dimension: injury_side {
    type: string
    sql: ${TABLE}."injury_side" ;;
  }

  dimension: injury_status {
    type: string
    sql: ${TABLE}."injury_status" ;;
  }

  dimension: injury_type {
    type: string
    sql: ${TABLE}."injury_type" ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."person_id" ;;
  }

  dimension: phase_type {
    type: string
    sql: ${TABLE}."phase_type" ;;
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

  measure: count {
    type: count
    drill_fields: [id, persons.id, seasons.id]
  }
}
