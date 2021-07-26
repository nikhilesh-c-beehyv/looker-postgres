view: baseball_defensive_group {
  sql_table_name: public.baseball_defensive_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, baseball_action_pitches.count, baseball_action_plays.count, baseball_defensive_players.count]
  }
}
