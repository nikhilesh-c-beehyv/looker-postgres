view: team_phases {
  sql_table_name: public.team_phases ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: affiliation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."affiliation_id" ;;
  }

  dimension: end_date_time {
    type: string
    sql: ${TABLE}."end_date_time" ;;
  }

  dimension: end_season_id {
    type: number
    sql: ${TABLE}."end_season_id" ;;
  }

  dimension: phase_status {
    type: string
    sql: ${TABLE}."phase_status" ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."role_id" ;;
  }

  dimension: start_date_time {
    type: string
    sql: ${TABLE}."start_date_time" ;;
  }

  dimension: start_season_id {
    type: number
    sql: ${TABLE}."start_season_id" ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."team_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, roles.id, roles.role_name, teams.id, affiliations.id]
  }
}
