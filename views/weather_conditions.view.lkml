view: weather_conditions {
  sql_table_name: public.weather_conditions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: clouds {
    type: string
    sql: ${TABLE}."clouds" ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."event_id" ;;
  }

  dimension: humidity {
    type: string
    sql: ${TABLE}."humidity" ;;
  }

  dimension: temperature {
    type: string
    sql: ${TABLE}."temperature" ;;
  }

  dimension: temperature_units {
    type: string
    sql: ${TABLE}."temperature_units" ;;
  }

  dimension: weather_code {
    type: string
    sql: ${TABLE}."weather_code" ;;
  }

  dimension: wind_direction {
    type: string
    sql: ${TABLE}."wind_direction" ;;
  }

  dimension: wind_velocity {
    type: string
    sql: ${TABLE}."wind_velocity" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.id]
  }
}
