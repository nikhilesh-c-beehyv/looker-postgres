view: affiliation_phases {
  sql_table_name: public.affiliation_phases ;;
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

  dimension: ancestor_affiliation_id {
    type: number
    sql: ${TABLE}."ancestor_affiliation_id" ;;
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

  measure: count {
    type: count
    drill_fields: [id, affiliations.id]
  }
}
