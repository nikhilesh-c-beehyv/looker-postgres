view: wagering_total_score_lines {
  sql_table_name: public.wagering_total_score_lines ;;
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

  dimension: line_over {
    type: string
    sql: ${TABLE}."line_over" ;;
  }

  dimension: line_under {
    type: string
    sql: ${TABLE}."line_under" ;;
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

  dimension: total {
    type: string
    sql: ${TABLE}."total" ;;
  }

  dimension: total_opening {
    type: string
    sql: ${TABLE}."total_opening" ;;
  }

  dimension: vigorish {
    type: string
    sql: ${TABLE}."vigorish" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, teams.id, persons.id, bookmakers.id, events.id]
  }
}
