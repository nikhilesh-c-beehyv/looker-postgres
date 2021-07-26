view: motor_racing_qualifying_stats {
  sql_table_name: public.motor_racing_qualifying_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: grid {
    type: string
    sql: ${TABLE}."grid" ;;
  }

  dimension: pole_position {
    type: string
    sql: ${TABLE}."pole_position" ;;
  }

  dimension: pole_wins {
    type: string
    sql: ${TABLE}."pole_wins" ;;
  }

  dimension: qualifying_position {
    type: string
    sql: ${TABLE}."qualifying_position" ;;
  }

  dimension: qualifying_speed {
    type: string
    sql: ${TABLE}."qualifying_speed" ;;
  }

  dimension: qualifying_speed_units {
    type: string
    sql: ${TABLE}."qualifying_speed_units" ;;
  }

  dimension: qualifying_time {
    type: string
    sql: ${TABLE}."qualifying_time" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
