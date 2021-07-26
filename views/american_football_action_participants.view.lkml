view: american_football_action_participants {
  sql_table_name: public.american_football_action_participants ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: american_football_action_play_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."american_football_action_play_id" ;;
  }

  dimension: field_line {
    type: number
    sql: ${TABLE}."field_line" ;;
  }

  dimension: participant_role {
    type: string
    sql: ${TABLE}."participant_role" ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."person_id" ;;
  }

  dimension: score_credit {
    type: number
    sql: ${TABLE}."score_credit" ;;
  }

  dimension: score_type {
    type: string
    sql: ${TABLE}."score_type" ;;
  }

  dimension: yardage {
    type: number
    sql: ${TABLE}."yardage" ;;
  }

  dimension: yards_gained {
    type: number
    sql: ${TABLE}."yards_gained" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, american_football_action_plays.id, persons.id]
  }
}
