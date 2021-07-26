view: person_phases {
  sql_table_name: public.person_phases ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: end_date {
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
    sql: ${TABLE}."end_date_time" ;;
  }

  dimension: end_season_id {
    type: number
    sql: ${TABLE}."end_season_id" ;;
  }

  dimension: entry_reason {
    type: string
    sql: ${TABLE}."entry_reason" ;;
  }

  dimension: exit_reason {
    type: string
    sql: ${TABLE}."exit_reason" ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}."height" ;;
  }

  dimension: membership_id {
    type: number
    sql: ${TABLE}."membership_id" ;;
  }

  dimension: membership_type {
    type: string
    sql: ${TABLE}."membership_type" ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."person_id" ;;
  }

  dimension: phase_status {
    type: string
    sql: ${TABLE}."phase_status" ;;
  }

  dimension: regular_position_depth {
    type: string
    sql: ${TABLE}."regular_position_depth" ;;
  }

  dimension: regular_position_id {
    type: number
    sql: ${TABLE}."regular_position_id" ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."role_id" ;;
  }

  dimension: role_status {
    type: string
    sql: ${TABLE}."role_status" ;;
  }

  dimension: selection_level {
    type: number
    sql: ${TABLE}."selection_level" ;;
  }

  dimension: selection_overall {
    type: number
    sql: ${TABLE}."selection_overall" ;;
  }

  dimension: selection_sublevel {
    type: number
    sql: ${TABLE}."selection_sublevel" ;;
  }

  dimension_group: start_date {
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
    sql: ${TABLE}."start_date_time" ;;
  }

  dimension: start_season_id {
    type: number
    sql: ${TABLE}."start_season_id" ;;
  }

  dimension: uniform_number {
    type: string
    sql: ${TABLE}."uniform_number" ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}."weight" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, roles.id, roles.role_name, persons.id]
  }
}
