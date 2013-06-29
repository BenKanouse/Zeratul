class Brawl < ActiveRecord::Base
  has_many :brawls_pro_teams
  has_many :pro_teams, through: :brawls_pro_teams
  has_many :throwdowns
end
