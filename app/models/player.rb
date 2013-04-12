class Player < ActiveRecord::Base
	belongs_to :pro_team
	has_many :anti_team_players
	has_many :anti_team_players
	has_many :anti_teams, :source => :fantasy_team, :through => :anti_team_players
	has_many :fantasy_team_players
	has_many :fantasy_teams, :through => :fantasy_team_players
	has_many :main_team_players
	has_many :main_teams, :source => :fantasy_team, :through => :main_team_players
end
