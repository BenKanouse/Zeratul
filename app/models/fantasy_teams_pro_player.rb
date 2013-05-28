class FantasyTeamsProPlayer < ActiveRecord::Base
  belongs_to :fantasy_team
  belongs_to :pro_player
end
