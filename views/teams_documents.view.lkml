view: teams_documents {
  sql_table_name: public.teams_documents ;;

  dimension: document_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."document_id" ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."team_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [documents.id, teams.id]
  }
}
