view: motor_racing_race_stats {
  sql_table_name: public.motor_racing_race_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: bonus {
    type: string
    sql: ${TABLE}."bonus" ;;
  }

  dimension: distance_completed {
    type: string
    sql: ${TABLE}."distance_completed" ;;
  }

  dimension: distance_leading {
    type: string
    sql: ${TABLE}."distance_leading" ;;
  }

  dimension: distance_units {
    type: string
    sql: ${TABLE}."distance_units" ;;
  }

  dimension: finishes {
    type: string
    sql: ${TABLE}."finishes" ;;
  }

  dimension: finishes_top_10 {
    type: string
    sql: ${TABLE}."finishes_top_10" ;;
  }

  dimension: finishes_top_5 {
    type: string
    sql: ${TABLE}."finishes_top_5" ;;
  }

  dimension: laps_ahead_follower {
    type: string
    sql: ${TABLE}."laps_ahead_follower" ;;
  }

  dimension: laps_behind_leader {
    type: string
    sql: ${TABLE}."laps_behind_leader" ;;
  }

  dimension: laps_completed {
    type: string
    sql: ${TABLE}."laps_completed" ;;
  }

  dimension: laps_leading_total {
    type: string
    sql: ${TABLE}."laps_leading_total" ;;
  }

  dimension: leads_total {
    type: string
    sql: ${TABLE}."leads_total" ;;
  }

  dimension: money {
    type: string
    sql: ${TABLE}."money" ;;
  }

  dimension: money_units {
    type: string
    sql: ${TABLE}."money_units" ;;
  }

  dimension: non_finishes {
    type: string
    sql: ${TABLE}."non_finishes" ;;
  }

  dimension: points {
    type: string
    sql: ${TABLE}."points" ;;
  }

  dimension: points_rookie {
    type: string
    sql: ${TABLE}."points_rookie" ;;
  }

  dimension: races_leading {
    type: string
    sql: ${TABLE}."races_leading" ;;
  }

  dimension: speed_average {
    type: string
    sql: ${TABLE}."speed_average" ;;
  }

  dimension: speed_units {
    type: string
    sql: ${TABLE}."speed_units" ;;
  }

  dimension: starts {
    type: string
    sql: ${TABLE}."starts" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  dimension: time_ahead_follower {
    type: string
    sql: ${TABLE}."time_ahead_follower" ;;
  }

  dimension: time_behind_leader {
    type: string
    sql: ${TABLE}."time_behind_leader" ;;
  }

  dimension: wins {
    type: string
    sql: ${TABLE}."wins" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
