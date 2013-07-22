class ProLeaguesProPlayer < ActiveRecord::Base
  belongs_to :pro_leauge
  belongs_to :pro_player
end
