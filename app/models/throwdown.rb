class Throwdown < ActiveRecord::Base
  belongs_to :brawl
  has_many :pro_players, through: :pro_players_throwdowns
  has_many :pro_players_throwdowns
end
