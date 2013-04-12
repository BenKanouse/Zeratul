class FantasyTeamPlayer < ActiveRecord::Base
	belongs_to :fantasy_team
	belongs_to :player
end
