view: core_person_stats {
  sql_table_name: public.core_person_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: events_played {
    type: number
    sql: ${TABLE}."events_played" ;;
  }

  dimension: events_started {
    type: number
    sql: ${TABLE}."events_started" ;;
  }

  dimension: position_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."position_id" ;;
  }

  dimension: time_played_event {
    type: string
    sql: ${TABLE}."time_played_event" ;;
  }

  dimension: time_played_event_average {
    type: string
    sql: ${TABLE}."time_played_event_average" ;;
  }

  dimension: time_played_total {
    type: string
    sql: ${TABLE}."time_played_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, positions.id]
  }
}
