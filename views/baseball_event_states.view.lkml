view: baseball_event_states {
  sql_table_name: public.baseball_event_states ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: at_bat_number {
    type: number
    sql: ${TABLE}."at_bat_number" ;;
  }

  dimension: balls {
    type: number
    sql: ${TABLE}."balls" ;;
  }

  dimension: batter_id {
    type: number
    sql: ${TABLE}."batter_id" ;;
  }

  dimension: batter_side {
    type: string
    sql: ${TABLE}."batter_side" ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}."context" ;;
  }

  dimension: current_state {
    type: number
    sql: ${TABLE}."current_state" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: inning_half {
    type: string
    sql: ${TABLE}."inning_half" ;;
  }

  dimension: inning_value {
    type: number
    sql: ${TABLE}."inning_value" ;;
  }

  dimension: outs {
    type: number
    sql: ${TABLE}."outs" ;;
  }

  dimension: pitcher_id {
    type: number
    sql: ${TABLE}."pitcher_id" ;;
  }

  dimension: runner_on_first {
    type: number
    sql: ${TABLE}."runner_on_first" ;;
  }

  dimension: runner_on_first_id {
    type: number
    sql: ${TABLE}."runner_on_first_id" ;;
  }

  dimension: runner_on_second {
    type: number
    sql: ${TABLE}."runner_on_second" ;;
  }

  dimension: runner_on_second_id {
    type: number
    sql: ${TABLE}."runner_on_second_id" ;;
  }

  dimension: runner_on_third {
    type: number
    sql: ${TABLE}."runner_on_third" ;;
  }

  dimension: runner_on_third_id {
    type: number
    sql: ${TABLE}."runner_on_third_id" ;;
  }

  dimension: runs_this_inning_half {
    type: number
    sql: ${TABLE}."runs_this_inning_half" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."sequence_number" ;;
  }

  dimension: strikes {
    type: number
    sql: ${TABLE}."strikes" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.id, baseball_action_plays.count, baseball_action_substitutions.count]
  }
}
