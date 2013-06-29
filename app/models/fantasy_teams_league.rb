class FantasyTeamsLeague < ActiveRecord::Base
  belongs_to :fantasy_team
  belongs_to :league
end
