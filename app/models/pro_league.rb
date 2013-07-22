class ProLeague < ActiveRecord::Base
  has_many :pro_leagues_pro_players
  has_many :pro_players, through: :pro_leagues_pro_players
end
