view: standing_subgroups {
  sql_table_name: public.standing_subgroups ;;
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

  dimension: standing_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."standing_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, standings.id, affiliations.id, outcome_totals.count]
  }
}
