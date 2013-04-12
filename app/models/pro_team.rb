class ProTeam < ActiveRecord::Base
	has_many :fantasy_teams
	has_many :players
end
