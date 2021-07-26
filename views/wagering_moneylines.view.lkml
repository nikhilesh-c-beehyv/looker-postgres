view: wagering_moneylines {
  sql_table_name: public.wagering_moneylines ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: bookmaker_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."bookmaker_id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date_time" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: line {
    type: string
    sql: ${TABLE}."line" ;;
  }

  dimension: line_opening {
    type: string
    sql: ${TABLE}."line_opening" ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."person_id" ;;
  }

  dimension: prediction {
    type: string
    sql: ${TABLE}."prediction" ;;
  }

  dimension: rotation_key {
    type: string
    sql: ${TABLE}."rotation_key" ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."team_id" ;;
  }

  dimension: vigorish {
    type: string
    sql: ${TABLE}."vigorish" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, persons.id, teams.id, bookmakers.id, events.id]
  }
}
