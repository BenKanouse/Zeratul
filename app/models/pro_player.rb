class ProPlayer < ActiveRecord::Base
  has_many :anti_team_pro_players
  has_many :anti_teams, source: :fantasy_team, through: :anti_team_players
  has_many :fantasy_teams, :through => :fantasy_teams_pro_players
  has_many :main_team_pro_players
  has_many :main_teams, source: :fantasy_team, through: :main_team_pro_players
  has_many :pro_players_throwdowns
  has_many :pro_teams, through: :pro_teams_pro_players
  has_many :pro_teams_pro_players
  has_many :throwdowns, through: :pro_players_throwdowns
end
