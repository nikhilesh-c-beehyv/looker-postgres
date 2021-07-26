view: baseball_pitching_stats {
  sql_table_name: public.baseball_pitching_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: balks {
    type: number
    sql: ${TABLE}."balks" ;;
  }

  dimension: bases_on_balls {
    type: number
    sql: ${TABLE}."bases_on_balls" ;;
  }

  dimension: bases_on_balls_intentional {
    type: number
    sql: ${TABLE}."bases_on_balls_intentional" ;;
  }

  dimension: doubles_allowed {
    type: number
    sql: ${TABLE}."doubles_allowed" ;;
  }

  dimension: earned_runs {
    type: number
    sql: ${TABLE}."earned_runs" ;;
  }

  dimension: era {
    type: number
    sql: ${TABLE}."era" ;;
  }

  dimension: errors_hit_with_pitch {
    type: number
    sql: ${TABLE}."errors_hit_with_pitch" ;;
  }

  dimension: errors_wild_pitch {
    type: number
    sql: ${TABLE}."errors_wild_pitch" ;;
  }

  dimension: event_credit {
    type: string
    sql: ${TABLE}."event_credit" ;;
  }

  dimension: games_complete {
    type: number
    sql: ${TABLE}."games_complete" ;;
  }

  dimension: games_finished {
    type: number
    sql: ${TABLE}."games_finished" ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}."hits" ;;
  }

  dimension: home_runs_allowed {
    type: number
    sql: ${TABLE}."home_runs_allowed" ;;
  }

  dimension: inherited_runners_scored {
    type: number
    sql: ${TABLE}."inherited_runners_scored" ;;
  }

  dimension: innings_pitched {
    type: string
    sql: ${TABLE}."innings_pitched" ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}."losses" ;;
  }

  dimension: number_of_pitches {
    type: number
    sql: ${TABLE}."number_of_pitches" ;;
  }

  dimension: pick_offs {
    type: number
    sql: ${TABLE}."pick_offs" ;;
  }

  dimension: runs_allowed {
    type: number
    sql: ${TABLE}."runs_allowed" ;;
  }

  dimension: save_credit {
    type: string
    sql: ${TABLE}."save_credit" ;;
  }

  dimension: saves {
    type: number
    sql: ${TABLE}."saves" ;;
  }

  dimension: shutouts {
    type: number
    sql: ${TABLE}."shutouts" ;;
  }

  dimension: singles_allowed {
    type: number
    sql: ${TABLE}."singles_allowed" ;;
  }

  dimension: strikeout_to_bb_ratio {
    type: number
    sql: ${TABLE}."strikeout_to_bb_ratio" ;;
  }

  dimension: strikeouts {
    type: number
    sql: ${TABLE}."strikeouts" ;;
  }

  dimension: triples_allowed {
    type: number
    sql: ${TABLE}."triples_allowed" ;;
  }

  dimension: unearned_runs {
    type: number
    sql: ${TABLE}."unearned_runs" ;;
  }

  dimension: winning_percentage {
    type: number
    sql: ${TABLE}."winning_percentage" ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}."wins" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
