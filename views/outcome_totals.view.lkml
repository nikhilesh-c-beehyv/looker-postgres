view: outcome_totals {
  sql_table_name: public.outcome_totals ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: losses {
    type: string
    sql: ${TABLE}."losses" ;;
  }

  dimension: outcome_holder_id {
    type: number
    sql: ${TABLE}."outcome_holder_id" ;;
  }

  dimension: outcome_holder_type {
    type: string
    sql: ${TABLE}."outcome_holder_type" ;;
  }

  dimension: points_difference {
    type: string
    sql: ${TABLE}."points_difference" ;;
  }

  dimension: points_scored_against {
    type: string
    sql: ${TABLE}."points_scored_against" ;;
  }

  dimension: points_scored_for {
    type: string
    sql: ${TABLE}."points_scored_for" ;;
  }

  dimension: rank {
    type: string
    sql: ${TABLE}."rank" ;;
  }

  dimension: standing_points {
    type: string
    sql: ${TABLE}."standing_points" ;;
  }

  dimension: standing_subgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."standing_subgroup_id" ;;
  }

  dimension: streak_duration {
    type: string
    sql: ${TABLE}."streak_duration" ;;
  }

  dimension_group: streak_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."streak_end" ;;
  }

  dimension_group: streak_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."streak_start" ;;
  }

  dimension: streak_total {
    type: string
    sql: ${TABLE}."streak_total" ;;
  }

  dimension: streak_type {
    type: string
    sql: ${TABLE}."streak_type" ;;
  }

  dimension: ties {
    type: string
    sql: ${TABLE}."ties" ;;
  }

  dimension: undecideds {
    type: string
    sql: ${TABLE}."undecideds" ;;
  }

  dimension: winning_percentage {
    type: string
    sql: ${TABLE}."winning_percentage" ;;
  }

  dimension: wins {
    type: string
    sql: ${TABLE}."wins" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, standing_subgroups.id]
  }
}
