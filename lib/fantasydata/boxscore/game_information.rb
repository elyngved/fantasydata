require 'fantasydata/base'

module Fantasydata
  module Boxscore
    class GameInformation < Fantasydata::Base
      attr_reader :game_key, :date, :season_type, :season, :week, :stadium, 
                  :playing_surface, :temperature, :humidity, :wind_speed, 
                  :away_team, :home_team, :away_score, :home_score, :total_score, 
                  :over_under, :point_spread, :away_score_quarter1, 
                  :away_score_quarter2, :away_score_quarter3, :away_score_quarter4, 
                  :away_score_overtime, :home_score_quarter1, :home_score_quarter2, 
                  :home_score_quarter3, :home_score_quarter4, :home_score_overtime, 
                  :away_time_of_possession, :home_time_of_possession, 
                  :away_first_downs, :home_first_downs, :away_first_downs_by_rushing, 
                  :home_first_downs_by_rushing, :away_first_downs_by_passing, 
                  :home_first_downs_by_passing, :away_first_downs_by_penalty, 
                  :home_first_downs_by_penalty, :away_offensive_plays, 
                  :home_offensive_plays, :away_offensive_yards, :home_offensive_yards, 
                  :away_offensive_yards_per_play, :home_offensive_yards_per_play, 
                  :away_touchdowns, :home_touchdowns, :away_rushing_attempts, 
                  :home_rushing_attempts, :away_rushing_yards, :home_rushing_yards, 
                  :away_rushing_yards_per_attempt, :home_rushing_yards_per_attempt, 
                  :away_rushing_touchdowns, :home_rushing_touchdowns, 
                  :away_passing_attempts, :home_passing_attempts, 
                  :away_passing_completions, :home_passing_completions, 
                  :away_passing_yards, :home_passing_yards, :away_passing_touchdowns, 
                  :home_passing_touchdowns, :away_passing_interceptions, 
                  :home_passing_interceptions, :away_passing_yards_per_attempt, 
                  :home_passing_yards_per_attempt, :away_passing_yards_per_completion, 
                  :home_passing_yards_per_completion, :away_completion_percentage, 
                  :home_completion_percentage, :away_passer_rating, :home_passer_rating, 
                  :away_third_down_attempts, :home_third_down_attempts, 
                  :away_third_down_conversions, :home_third_down_conversions, 
                  :away_third_down_percentage, :home_third_down_percentage, 
                  :away_fourth_down_attempts, :home_fourth_down_attempts, 
                  :away_fourth_down_conversions, :home_fourth_down_conversions, 
                  :away_fourth_down_percentage, :home_fourth_down_percentage, 
                  :away_red_zone_attempts, :home_red_zone_attempts, 
                  :away_red_zone_conversions, :home_red_zone_conversions, 
                  :away_goal_to_go_attempts, :home_goal_to_go_attempts, 
                  :away_goal_to_go_conversions, :home_goal_to_go_conversions, 
                  :away_return_yards, :home_return_yards, :away_penalties, :home_penalties, 
                  :away_penalty_yards, :home_penalty_yards, :away_fumbles, :home_fumbles, 
                  :away_fumbles_lost, :home_fumbles_lost, :away_times_sacked, 
                  :home_times_sacked, :away_times_sacked_yards, :home_times_sacked_yards, 
                  :away_safeties, :home_safeties, :away_punts, :home_punts, 
                  :away_punt_yards, :home_punt_yards, :away_punt_average, 
                  :home_punt_average, :away_giveaways, :home_giveaways, :away_takeaways, 
                  :home_takeaways, :away_turnover_differential, :home_turnover_differential, 
                  :away_kickoffs, :home_kickoffs, :away_kickoffs_in_end_zone, 
                  :home_kickoffs_in_end_zone, :away_kickoff_touchbacks, :home_kickoff_touchbacks, 
                  :away_punts_had_blocked, :home_punts_had_blocked, :away_punt_net_average, 
                  :home_punt_net_average, :away_extra_point_kicking_attempts, 
                  :home_extra_point_kicking_attempts, :away_extra_point_kicking_conversions, 
                  :home_extra_point_kicking_conversions, :away_extra_points_had_blocked, 
                  :home_extra_points_had_blocked, :away_extra_point_passing_attempts, 
                  :home_extra_point_passing_attempts, :away_extra_point_passing_conversions, 
                  :home_extra_point_passing_conversions, :away_extra_point_rushing_attempts, 
                  :home_extra_point_rushing_attempts, :away_extra_point_rushing_conversions, 
                  :home_extra_point_rushing_conversions, :away_field_goal_attempts, 
                  :home_field_goal_attempts, :away_field_goals_made, :home_field_goals_made, 
                  :away_field_goals_had_blocked, :home_field_goals_had_blocked, 
                  :away_punt_returns, :home_punt_returns, :away_punt_return_yards, 
                  :home_punt_return_yards, :away_kick_returns, :home_kick_returns, 
                  :away_kick_return_yards, :home_kick_return_yards, :away_interception_returns, 
                  :home_interception_returns, :away_interception_return_yards, 
                  :home_interception_return_yards, :away_solo_tackles, :away_assisted_tackles, 
                  :away_quarterback_hits, :away_tackles_for_loss, :away_sacks, :away_sack_yards, 
                  :away_passes_defended, :away_fumbles_forced, :away_fumbles_recovered, 
                  :away_fumble_return_yards, :away_fumble_return_touchdowns, 
                  :away_interception_return_touchdowns, :away_blocked_kicks, 
                  :away_punt_return_touchdowns, :away_punt_return_long, 
                  :away_kick_return_touchdowns, :away_kick_return_long, 
                  :away_blocked_kick_return_yards, :away_blocked_kick_return_touchdowns, 
                  :away_field_goal_return_yards, :away_field_goal_return_touchdowns, 
                  :away_punt_net_yards, :home_solo_tackles, :home_assisted_tackles, 
                  :home_quarterback_hits, :home_tackles_for_loss, :home_sacks, :home_sack_yards, 
                  :home_passes_defended, :home_fumbles_forced, :home_fumbles_recovered, 
                  :home_fumble_return_yards, :home_fumble_return_touchdowns, 
                  :home_interception_return_touchdowns, :home_blocked_kicks, 
                  :home_punt_return_touchdowns, :home_punt_return_long, :home_kick_return_touchdowns, 
                  :home_kick_return_long, :home_blocked_kick_return_yards, 
                  :home_blocked_kick_return_touchdowns, :home_field_goal_return_yards, 
                  :home_field_goal_return_touchdowns, :home_punt_net_yards, :is_game_over, 
                  :game_id, :stadium_id, :away_two_point_conversion_returns, 
                  :home_two_point_conversion_returns

      def stadium
        @stadium ||= Fantasydata::Stadium.new(@attrs[:stadium_details])
      end
    end
  end
end
