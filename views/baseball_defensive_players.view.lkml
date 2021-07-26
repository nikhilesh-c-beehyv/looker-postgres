view: baseball_defensive_players {
  sql_table_name: public.baseball_defensive_players ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: baseball_defensive_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."baseball_defensive_group_id" ;;
  }

  dimension: player_id {
    type: number
    sql: ${TABLE}."player_id" ;;
  }

  dimension: position_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."position_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, baseball_defensive_group.id, positions.id]
  }
}
