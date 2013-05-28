class ProTeam < ActiveRecord::Base
  has_many :brawls, through: :brawls_pro_teams
  has_many :brawls_pro_teams
  has_many :fantasy_teams
  has_many :pro_players, through: :pro_teams_pro_players
  has_many :pro_teams_pro_players
end
