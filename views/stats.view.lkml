view: stats {
  sql_table_name: public.stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}."context" ;;
  }

  dimension: stat_coverage_id {
    type: number
    sql: ${TABLE}."stat_coverage_id" ;;
  }

  dimension: stat_coverage_type {
    type: string
    sql: ${TABLE}."stat_coverage_type" ;;
  }

  dimension: stat_holder_id {
    type: number
    sql: ${TABLE}."stat_holder_id" ;;
  }

  dimension: stat_holder_type {
    type: string
    sql: ${TABLE}."stat_holder_type" ;;
  }

  dimension: stat_repository_id {
    type: number
    sql: ${TABLE}."stat_repository_id" ;;
  }

  dimension: stat_repository_type {
    type: string
    sql: ${TABLE}."stat_repository_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
