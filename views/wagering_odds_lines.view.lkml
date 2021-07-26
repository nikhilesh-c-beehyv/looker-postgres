view: wagering_odds_lines {
  sql_table_name: public.wagering_odds_lines ;;
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

  dimension: denominator {
    type: string
    sql: ${TABLE}."denominator" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: numerator {
    type: string
    sql: ${TABLE}."numerator" ;;
  }

  dimension: payout_amount {
    type: string
    sql: ${TABLE}."payout_amount" ;;
  }

  dimension: payout_calculation {
    type: string
    sql: ${TABLE}."payout_calculation" ;;
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

  measure: count {
    type: count
    drill_fields: [id, persons.id, teams.id, events.id, bookmakers.id]
  }
}
