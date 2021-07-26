view: ice_hockey_player_stats {
  sql_table_name: public.ice_hockey_player_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: plus_minus {
    type: string
    sql: ${TABLE}."plus_minus" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
