view: baseball_action_pitches {
  sql_table_name: public.baseball_action_pitches ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: ball_type {
    type: string
    sql: ${TABLE}."ball_type" ;;
  }

  dimension: baseball_action_play_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."baseball_action_play_id" ;;
  }

  dimension: baseball_defensive_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."baseball_defensive_group_id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension: pitch_location {
    type: string
    sql: ${TABLE}."pitch_location" ;;
  }

  dimension: pitch_type {
    type: string
    sql: ${TABLE}."pitch_type" ;;
  }

  dimension: pitch_velocity {
    type: number
    sql: ${TABLE}."pitch_velocity" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: strike_type {
    type: string
    sql: ${TABLE}."strike_type" ;;
  }

  dimension: trajectory_coordinates {
    type: string
    sql: ${TABLE}."trajectory_coordinates" ;;
  }

  dimension: trajectory_formula {
    type: string
    sql: ${TABLE}."trajectory_formula" ;;
  }

  dimension: umpire_call {
    type: string
    sql: ${TABLE}."umpire_call" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, baseball_action_plays.id, baseball_defensive_group.id]
  }
}
