class League < ActiveRecord::Base
  has_many :fantasy_teams, through: :fantasy_teams_leagues
  has_many :fantasy_teams_leagues

end
