view: baseball_offensive_stats {
  sql_table_name: public.baseball_offensive_stats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: at_bats {
    type: number
    sql: ${TABLE}."at_bats" ;;
  }

  dimension: at_bats_per_home_run {
    type: number
    sql: ${TABLE}."at_bats_per_home_run" ;;
  }

  dimension: at_bats_per_rbi {
    type: number
    sql: ${TABLE}."at_bats_per_rbi" ;;
  }

  dimension: average {
    type: number
    sql: ${TABLE}."average" ;;
  }

  dimension: bases_on_balls {
    type: number
    sql: ${TABLE}."bases_on_balls" ;;
  }

  dimension: defensive_interferance_reaches {
    type: number
    sql: ${TABLE}."defensive_interferance_reaches" ;;
  }

  dimension: doubles {
    type: number
    sql: ${TABLE}."doubles" ;;
  }

  dimension: grand_slams {
    type: number
    sql: ${TABLE}."grand_slams" ;;
  }

  dimension: grounded_into_double_play {
    type: number
    sql: ${TABLE}."grounded_into_double_play" ;;
  }

  dimension: hit_by_pitch {
    type: number
    sql: ${TABLE}."hit_by_pitch" ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}."hits" ;;
  }

  dimension: hits_extra_base {
    type: number
    sql: ${TABLE}."hits_extra_base" ;;
  }

  dimension: home_runs {
    type: number
    sql: ${TABLE}."home_runs" ;;
  }

  dimension: left_in_scoring_position {
    type: number
    sql: ${TABLE}."left_in_scoring_position" ;;
  }

  dimension: left_on_base {
    type: number
    sql: ${TABLE}."left_on_base" ;;
  }

  dimension: moved_up {
    type: number
    sql: ${TABLE}."moved_up" ;;
  }

  dimension: on_base_percentage {
    type: number
    sql: ${TABLE}."on_base_percentage" ;;
  }

  dimension: on_base_plus_slugging {
    type: number
    sql: ${TABLE}."on_base_plus_slugging" ;;
  }

  dimension: plate_appearances {
    type: number
    sql: ${TABLE}."plate_appearances" ;;
  }

  dimension: plate_appearances_per_home_run {
    type: number
    sql: ${TABLE}."plate_appearances_per_home_run" ;;
  }

  dimension: plate_appearances_per_rbi {
    type: number
    sql: ${TABLE}."plate_appearances_per_rbi" ;;
  }

  dimension: rbi {
    type: number
    sql: ${TABLE}."rbi" ;;
  }

  dimension: runs_scored {
    type: number
    sql: ${TABLE}."runs_scored" ;;
  }

  dimension: sac_bunts {
    type: number
    sql: ${TABLE}."sac_bunts" ;;
  }

  dimension: sac_flies {
    type: number
    sql: ${TABLE}."sac_flies" ;;
  }

  dimension: singles {
    type: number
    sql: ${TABLE}."singles" ;;
  }

  dimension: slugging_percentage {
    type: number
    sql: ${TABLE}."slugging_percentage" ;;
  }

  dimension: stolen_bases {
    type: number
    sql: ${TABLE}."stolen_bases" ;;
  }

  dimension: stolen_bases_average {
    type: number
    sql: ${TABLE}."stolen_bases_average" ;;
  }

  dimension: stolen_bases_caught {
    type: number
    sql: ${TABLE}."stolen_bases_caught" ;;
  }

  dimension: strikeouts {
    type: number
    sql: ${TABLE}."strikeouts" ;;
  }

  dimension: total_bases {
    type: number
    sql: ${TABLE}."total_bases" ;;
  }

  dimension: triples {
    type: number
    sql: ${TABLE}."triples" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
