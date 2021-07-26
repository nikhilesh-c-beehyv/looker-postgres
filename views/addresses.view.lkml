view: addresses {
  sql_table_name: public.addresses ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: building {
    type: string
    sql: ${TABLE}."building" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."county" ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}."district" ;;
  }

  dimension: floor {
    type: string
    sql: ${TABLE}."floor" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."language" ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}."locality" ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."location_id" ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}."neighborhood" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}."street" ;;
  }

  dimension: street_number {
    type: string
    sql: ${TABLE}."street_number" ;;
  }

  dimension: street_prefix {
    type: string
    sql: ${TABLE}."street_prefix" ;;
  }

  dimension: street_suffix {
    type: string
    sql: ${TABLE}."street_suffix" ;;
  }

  dimension: suite {
    type: string
    sql: ${TABLE}."suite" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, locations.id]
  }
}
