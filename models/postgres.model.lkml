connection: "postgres"

# include all the views
include: "/views/**/*.view"

datagroup: postgres_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: postgres_default_datagroup

explore: addresses {
  join: locations {
    type: left_outer
    sql_on: ${addresses.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: affiliation_phases {
  join: affiliations {
    type: left_outer
    sql_on: ${affiliation_phases.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${affiliations.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: affiliations {
  join: publishers {
    type: left_outer
    sql_on: ${affiliations.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: affiliations_documents {
  join: documents {
    type: left_outer
    sql_on: ${affiliations_documents.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${affiliations_documents.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${documents.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }
}

explore: affiliations_events {
  join: events {
    type: left_outer
    sql_on: ${affiliations_events.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${affiliations_events.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: affiliations_media {
  join: media {
    type: left_outer
    sql_on: ${affiliations_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${affiliations_media.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${media.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: american_football_action_participants {
  join: american_football_action_plays {
    type: left_outer
    sql_on: ${american_football_action_participants.american_football_action_play_id} = ${american_football_action_plays.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${american_football_action_participants.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: american_football_event_states {
    type: left_outer
    sql_on: ${american_football_action_plays.american_football_event_state_id} = ${american_football_event_states.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${american_football_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: american_football_action_plays {
  join: american_football_event_states {
    type: left_outer
    sql_on: ${american_football_action_plays.american_football_event_state_id} = ${american_football_event_states.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${american_football_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: american_football_defensive_stats {}

explore: american_football_down_progress_stats {}

explore: american_football_event_states {
  join: events {
    type: left_outer
    sql_on: ${american_football_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: american_football_fumbles_stats {}

explore: american_football_offensive_stats {}

explore: american_football_passing_stats {}

explore: american_football_penalties_stats {}

explore: american_football_rushing_stats {}

explore: american_football_sacks_against_stats {}

explore: american_football_scoring_stats {}

explore: american_football_special_teams_stats {}

explore: baseball_action_contact_details {}

explore: baseball_action_pitches {
  join: baseball_action_plays {
    type: left_outer
    sql_on: ${baseball_action_pitches.baseball_action_play_id} = ${baseball_action_plays.id} ;;
    relationship: many_to_one
  }

  join: baseball_defensive_group {
    type: left_outer
    sql_on: ${baseball_action_pitches.baseball_defensive_group_id} = ${baseball_defensive_group.id} ;;
    relationship: many_to_one
  }

  join: baseball_event_states {
    type: left_outer
    sql_on: ${baseball_action_plays.baseball_event_state_id} = ${baseball_event_states.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${baseball_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: baseball_action_plays {
  join: baseball_event_states {
    type: left_outer
    sql_on: ${baseball_action_plays.baseball_event_state_id} = ${baseball_event_states.id} ;;
    relationship: many_to_one
  }

  join: baseball_defensive_group {
    type: left_outer
    sql_on: ${baseball_action_plays.baseball_defensive_group_id} = ${baseball_defensive_group.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${baseball_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: baseball_action_substitutions {
  join: baseball_event_states {
    type: left_outer
    sql_on: ${baseball_action_substitutions.baseball_event_state_id} = ${baseball_event_states.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${baseball_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: baseball_defensive_group {}

explore: baseball_defensive_players {
  join: baseball_defensive_group {
    type: left_outer
    sql_on: ${baseball_defensive_players.baseball_defensive_group_id} = ${baseball_defensive_group.id} ;;
    relationship: many_to_one
  }

  join: positions {
    type: left_outer
    sql_on: ${baseball_defensive_players.position_id} = ${positions.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${positions.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${affiliations.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: baseball_defensive_stats {}

explore: baseball_event_states {
  join: events {
    type: left_outer
    sql_on: ${baseball_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: baseball_offensive_stats {}

explore: baseball_pitching_stats {}

explore: basketball_defensive_stats {}

explore: basketball_event_states {
  join: events {
    type: left_outer
    sql_on: ${basketball_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: basketball_offensive_stats {}

explore: basketball_rebounding_stats {}

explore: basketball_team_stats {}

explore: bookmakers {
  join: publishers {
    type: left_outer
    sql_on: ${bookmakers.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${bookmakers.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: core_person_stats {
  join: positions {
    type: left_outer
    sql_on: ${core_person_stats.position_id} = ${positions.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${positions.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${affiliations.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: core_stats {}

explore: db_info {}

explore: display_names {}

explore: document_classes {}

explore: document_contents {
  join: documents {
    type: left_outer
    sql_on: ${document_contents.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${documents.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }
}

explore: document_fixtures {
  join: publishers {
    type: left_outer
    sql_on: ${document_fixtures.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: document_fixtures_events {
  join: document_fixtures {
    type: left_outer
    sql_on: ${document_fixtures_events.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${document_fixtures_events.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${document_fixtures.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: document_package_entry {
  join: documents {
    type: left_outer
    sql_on: ${document_package_entry.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: document_packages {
    type: left_outer
    sql_on: ${document_package_entry.document_package_id} = ${document_packages.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${documents.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }
}

explore: document_packages {}

explore: documents {
  join: publishers {
    type: left_outer
    sql_on: ${documents.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }
}

explore: documents_media {
  join: media_captions {
    type: left_outer
    sql_on: ${documents_media.media_caption_id} = ${media_captions.id} ;;
    relationship: many_to_one
  }

  join: documents {
    type: left_outer
    sql_on: ${documents_media.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${documents_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${documents.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }
}

explore: events {
  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: events_documents {
  join: documents {
    type: left_outer
    sql_on: ${events_documents.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${events_documents.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${documents.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: events_media {
  join: media {
    type: left_outer
    sql_on: ${events_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${events_media.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${media.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: events_sub_seasons {
  join: events {
    type: left_outer
    sql_on: ${events_sub_seasons.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sub_seasons {
    type: left_outer
    sql_on: ${events_sub_seasons.sub_season_id} = ${sub_seasons.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: seasons {
    type: left_outer
    sql_on: ${sub_seasons.season_id} = ${seasons.id} ;;
    relationship: many_to_one
  }
}

explore: ice_hockey_action_participants {
  join: ice_hockey_action_plays {
    type: left_outer
    sql_on: ${ice_hockey_action_participants.ice_hockey_action_play_id} = ${ice_hockey_action_plays.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${ice_hockey_action_participants.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: ice_hockey_event_states {
    type: left_outer
    sql_on: ${ice_hockey_action_plays.ice_hockey_event_state_id} = ${ice_hockey_event_states.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${ice_hockey_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: ice_hockey_action_plays {
  join: ice_hockey_event_states {
    type: left_outer
    sql_on: ${ice_hockey_action_plays.ice_hockey_event_state_id} = ${ice_hockey_event_states.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${ice_hockey_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: ice_hockey_defensive_stats {}

explore: ice_hockey_event_states {
  join: events {
    type: left_outer
    sql_on: ${ice_hockey_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: ice_hockey_offensive_stats {}

explore: ice_hockey_player_stats {}

explore: injury_phases {
  join: persons {
    type: left_outer
    sql_on: ${injury_phases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: seasons {
    type: left_outer
    sql_on: ${injury_phases.season_id} = ${seasons.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: key_aliases {
  join: key_roots {
    type: left_outer
    sql_on: ${key_aliases.key_root_id} = ${key_roots.id} ;;
    relationship: many_to_one
  }
}

explore: key_roots {}

explore: latest_revisions {}

explore: locations {}

explore: media {
  join: publishers {
    type: left_outer
    sql_on: ${media.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: media_captions {
  join: media {
    type: left_outer
    sql_on: ${media_captions.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${media.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: media_contents {
  join: media {
    type: left_outer
    sql_on: ${media_contents.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${media.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: media_keywords {
  join: media {
    type: left_outer
    sql_on: ${media_keywords.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${media.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: motor_racing_event_states {
  join: events {
    type: left_outer
    sql_on: ${motor_racing_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: motor_racing_qualifying_stats {}

explore: motor_racing_race_stats {}

explore: outcome_totals {
  join: standing_subgroups {
    type: left_outer
    sql_on: ${outcome_totals.standing_subgroup_id} = ${standing_subgroups.id} ;;
    relationship: many_to_one
  }

  join: standings {
    type: left_outer
    sql_on: ${standing_subgroups.standing_id} = ${standings.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${standing_subgroups.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: sub_seasons {
    type: left_outer
    sql_on: ${standings.sub_season_id} = ${sub_seasons.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${standings.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: seasons {
    type: left_outer
    sql_on: ${sub_seasons.season_id} = ${seasons.id} ;;
    relationship: many_to_one
  }
}

explore: participants_events {
  join: events {
    type: left_outer
    sql_on: ${participants_events.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: periods {}

explore: person_event_metadata {
  join: persons {
    type: left_outer
    sql_on: ${person_event_metadata.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${person_event_metadata.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: positions {
    type: left_outer
    sql_on: ${person_event_metadata.position_id} = ${positions.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${person_event_metadata.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${person_event_metadata.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${positions.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: person_phases {
  join: roles {
    type: left_outer
    sql_on: ${person_phases.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${person_phases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: persons {
  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: persons_documents {
  join: persons {
    type: left_outer
    sql_on: ${persons_documents.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: documents {
    type: left_outer
    sql_on: ${persons_documents.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }
}

explore: persons_media {
  join: persons {
    type: left_outer
    sql_on: ${persons_media.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${persons_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: positions {
  join: affiliations {
    type: left_outer
    sql_on: ${positions.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${affiliations.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: publishers {}

explore: roles {}

explore: seasons {
  join: publishers {
    type: left_outer
    sql_on: ${seasons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: sites {
  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${sites.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: soccer_defensive_stats {}

explore: soccer_event_states {
  join: events {
    type: left_outer
    sql_on: ${soccer_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: soccer_foul_stats {}

explore: soccer_offensive_stats {}

explore: standing_subgroups {
  join: standings {
    type: left_outer
    sql_on: ${standing_subgroups.standing_id} = ${standings.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${standing_subgroups.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: sub_seasons {
    type: left_outer
    sql_on: ${standings.sub_season_id} = ${sub_seasons.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${standings.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: seasons {
    type: left_outer
    sql_on: ${sub_seasons.season_id} = ${seasons.id} ;;
    relationship: many_to_one
  }
}

explore: standings {
  join: sub_seasons {
    type: left_outer
    sql_on: ${standings.sub_season_id} = ${sub_seasons.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${standings.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${standings.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: seasons {
    type: left_outer
    sql_on: ${sub_seasons.season_id} = ${seasons.id} ;;
    relationship: many_to_one
  }
}

explore: stats {}

explore: sub_periods {
  join: periods {
    type: left_outer
    sql_on: ${sub_periods.period_id} = ${periods.id} ;;
    relationship: many_to_one
  }
}

explore: sub_seasons {
  join: seasons {
    type: left_outer
    sql_on: ${sub_seasons.season_id} = ${seasons.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${seasons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: team_american_football_stats {}

explore: team_phases {
  join: roles {
    type: left_outer
    sql_on: ${team_phases.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${team_phases.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: affiliations {
    type: left_outer
    sql_on: ${team_phases.affiliation_id} = ${affiliations.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${teams.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: teams {
  join: publishers {
    type: left_outer
    sql_on: ${teams.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: teams_documents {
  join: documents {
    type: left_outer
    sql_on: ${teams_documents.document_id} = ${documents.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${teams_documents.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${documents.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: document_fixtures {
    type: left_outer
    sql_on: ${documents.document_fixture_id} = ${document_fixtures.id} ;;
    relationship: many_to_one
  }
}

explore: teams_media {
  join: media {
    type: left_outer
    sql_on: ${teams_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${teams_media.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${media.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }
}

explore: tennis_action_points {
  join: sub_periods {
    type: left_outer
    sql_on: ${tennis_action_points.sub_period_id} = ${sub_periods.id} ;;
    relationship: many_to_one
  }

  join: periods {
    type: left_outer
    sql_on: ${sub_periods.period_id} = ${periods.id} ;;
    relationship: many_to_one
  }
}

explore: tennis_action_volleys {
  join: tennis_action_points {
    type: left_outer
    sql_on: ${tennis_action_volleys.tennis_action_points_id} = ${tennis_action_points.id} ;;
    relationship: many_to_one
  }

  join: sub_periods {
    type: left_outer
    sql_on: ${tennis_action_points.sub_period_id} = ${sub_periods.id} ;;
    relationship: many_to_one
  }

  join: periods {
    type: left_outer
    sql_on: ${sub_periods.period_id} = ${periods.id} ;;
    relationship: many_to_one
  }
}

explore: tennis_event_states {
  join: events {
    type: left_outer
    sql_on: ${tennis_event_states.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: tennis_return_stats {}

explore: tennis_service_stats {}

explore: wagering_moneylines {
  join: persons {
    type: left_outer
    sql_on: ${wagering_moneylines.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${wagering_moneylines.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: bookmakers {
    type: left_outer
    sql_on: ${wagering_moneylines.bookmaker_id} = ${bookmakers.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${wagering_moneylines.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${bookmakers.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }
}

explore: wagering_odds_lines {
  join: persons {
    type: left_outer
    sql_on: ${wagering_odds_lines.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${wagering_odds_lines.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${wagering_odds_lines.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: bookmakers {
    type: left_outer
    sql_on: ${wagering_odds_lines.bookmaker_id} = ${bookmakers.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: wagering_runlines {
  join: persons {
    type: left_outer
    sql_on: ${wagering_runlines.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${wagering_runlines.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${wagering_runlines.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: bookmakers {
    type: left_outer
    sql_on: ${wagering_runlines.bookmaker_id} = ${bookmakers.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${persons.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: wagering_straight_spread_lines {
  join: bookmakers {
    type: left_outer
    sql_on: ${wagering_straight_spread_lines.bookmaker_id} = ${bookmakers.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${wagering_straight_spread_lines.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${wagering_straight_spread_lines.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${wagering_straight_spread_lines.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${bookmakers.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${bookmakers.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }
}

explore: wagering_total_score_lines {
  join: teams {
    type: left_outer
    sql_on: ${wagering_total_score_lines.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${wagering_total_score_lines.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: bookmakers {
    type: left_outer
    sql_on: ${wagering_total_score_lines.bookmaker_id} = ${bookmakers.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${wagering_total_score_lines.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${teams.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${bookmakers.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }
}

explore: weather_conditions {
  join: events {
    type: left_outer
    sql_on: ${weather_conditions.event_id} = ${events.id} ;;
    relationship: many_to_one
  }

  join: sites {
    type: left_outer
    sql_on: ${events.site_id} = ${sites.id} ;;
    relationship: many_to_one
  }

  join: publishers {
    type: left_outer
    sql_on: ${events.publisher_id} = ${publishers.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${sites.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}
