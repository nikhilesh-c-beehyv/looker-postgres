view: american_football_rushing_stats {
  sql_table_name: public.american_football_rushing_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: rushes_attempts {
    type: string
    sql: ${TABLE}."rushes_attempts" ;;
  }

  dimension: rushes_first_down {
    type: string
    sql: ${TABLE}."rushes_first_down" ;;
  }

  dimension: rushes_longest {
    type: string
    sql: ${TABLE}."rushes_longest" ;;
  }

  dimension: rushes_touchdowns {
    type: string
    sql: ${TABLE}."rushes_touchdowns" ;;
  }

  dimension: rushes_yards {
    type: string
    sql: ${TABLE}."rushes_yards" ;;
  }

  dimension: rushing_average_yards_per {
    type: string
    sql: ${TABLE}."rushing_average_yards_per" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
