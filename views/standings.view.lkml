view: standings {
  sql_table_name: public.standings ;;
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

  dimension: alignment_scope {
    type: string
    sql: ${TABLE}."alignment_scope" ;;
  }

  dimension: competition_scope {
    type: string
    sql: ${TABLE}."competition_scope" ;;
  }

  dimension: competition_scope_id {
    type: string
    sql: ${TABLE}."competition_scope_id" ;;
  }

  dimension: duration_scope {
    type: string
    sql: ${TABLE}."duration_scope" ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}."last_updated" ;;
  }

  dimension: publisher_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."publisher_id" ;;
  }

  dimension: scoping_label {
    type: string
    sql: ${TABLE}."scoping_label" ;;
  }

  dimension: site_scope {
    type: string
    sql: ${TABLE}."site_scope" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: standing_type {
    type: string
    sql: ${TABLE}."standing_type" ;;
  }

  dimension: sub_season_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."sub_season_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      sub_seasons.id,
      publishers.publisher_name,
      publishers.id,
      affiliations.id,
      standing_subgroups.count
    ]
  }
}
