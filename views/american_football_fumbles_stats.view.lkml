view: american_football_fumbles_stats {
  sql_table_name: public.american_football_fumbles_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: fumbles_committed {
    type: string
    sql: ${TABLE}."fumbles_committed" ;;
  }

  dimension: fumbles_forced {
    type: string
    sql: ${TABLE}."fumbles_forced" ;;
  }

  dimension: fumbles_lost {
    type: string
    sql: ${TABLE}."fumbles_lost" ;;
  }

  dimension: fumbles_opposing_committed {
    type: string
    sql: ${TABLE}."fumbles_opposing_committed" ;;
  }

  dimension: fumbles_opposing_lost {
    type: string
    sql: ${TABLE}."fumbles_opposing_lost" ;;
  }

  dimension: fumbles_opposing_recovered {
    type: string
    sql: ${TABLE}."fumbles_opposing_recovered" ;;
  }

  dimension: fumbles_opposing_yards_gained {
    type: string
    sql: ${TABLE}."fumbles_opposing_yards_gained" ;;
  }

  dimension: fumbles_own_committed {
    type: string
    sql: ${TABLE}."fumbles_own_committed" ;;
  }

  dimension: fumbles_own_lost {
    type: string
    sql: ${TABLE}."fumbles_own_lost" ;;
  }

  dimension: fumbles_own_recovered {
    type: string
    sql: ${TABLE}."fumbles_own_recovered" ;;
  }

  dimension: fumbles_own_yards_gained {
    type: string
    sql: ${TABLE}."fumbles_own_yards_gained" ;;
  }

  dimension: fumbles_recovered {
    type: string
    sql: ${TABLE}."fumbles_recovered" ;;
  }

  dimension: fumbles_yards_gained {
    type: string
    sql: ${TABLE}."fumbles_yards_gained" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
