view: teams_media {
  sql_table_name: public.teams_media ;;

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."media_id" ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."team_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [media.id, teams.id]
  }
}
