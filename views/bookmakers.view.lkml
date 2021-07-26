view: bookmakers {
  sql_table_name: public.bookmakers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: bookmaker_key {
    type: string
    sql: ${TABLE}."bookmaker_key" ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."location_id" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
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
      locations.id,
      wagering_moneylines.count,
      wagering_odds_lines.count,
      wagering_runlines.count,
      wagering_straight_spread_lines.count,
      wagering_total_score_lines.count
    ]
  }
}
