class FantasyTeam < ActiveRecord::Base
  belongs_to  :manager
  belongs_to  :pro_team
  has_many    :anti_pro_players
  has_many    :anti_pro_players, source: :pro_player, through: :anti_team_pro_players
  has_many    :anti_team_pro_players
  has_many    :fantasy_teams_pro_players
  has_many    :fantasy_teams_leagues
  has_many    :leagues, through: :fantasy_teams_leagues
  has_many    :main_pro_players, :source => :pro_player, :through => :main_team_pro_players
  has_many    :main_team_pro_players
end
