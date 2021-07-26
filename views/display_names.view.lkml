view: display_names {
  sql_table_name: public.display_names ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}."abbreviation" ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}."alias" ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}."entity_id" ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}."entity_type" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."full_name" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."language" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}."middle_name" ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}."prefix" ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}."short_name" ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}."suffix" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      full_name,
      middle_name,
      last_name,
      short_name
    ]
  }
}
