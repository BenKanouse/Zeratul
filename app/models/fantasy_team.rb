class FantasyTeam < ActiveRecord::Base
  belongs_to :manager
  belongs_to :pro_team
  has_many   :anti_team_players
  has_many   :fantasy_team_players
  has_many   :main_players, :source => :player, :through => :main_team_players
  has_many   :main_team_players
  has_many   :players, :through => :fantasy_team_players
  has_many   :anti_players, :source => :player, :through => :anti_team_players
end
