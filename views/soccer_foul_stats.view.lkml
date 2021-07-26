view: soccer_foul_stats {
  sql_table_name: public.soccer_foul_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: caution_points_pending {
    type: string
    sql: ${TABLE}."caution_points_pending" ;;
  }

  dimension: caution_points_total {
    type: string
    sql: ${TABLE}."caution_points_total" ;;
  }

  dimension: cautions_pending {
    type: string
    sql: ${TABLE}."cautions_pending" ;;
  }

  dimension: cautions_total {
    type: string
    sql: ${TABLE}."cautions_total" ;;
  }

  dimension: ejections_total {
    type: string
    sql: ${TABLE}."ejections_total" ;;
  }

  dimension: fouls_commited {
    type: string
    sql: ${TABLE}."fouls_commited" ;;
  }

  dimension: fouls_suffered {
    type: string
    sql: ${TABLE}."fouls_suffered" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
