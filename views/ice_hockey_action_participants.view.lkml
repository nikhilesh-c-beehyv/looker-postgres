view: ice_hockey_action_participants {
  sql_table_name: public.ice_hockey_action_participants ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: ice_hockey_action_play_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ice_hockey_action_play_id" ;;
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

  dimension: point_credit {
    type: number
    sql: ${TABLE}."point_credit" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ice_hockey_action_plays.id, persons.id]
  }
}
