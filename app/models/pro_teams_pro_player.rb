class ProTeamsProPlayer < ActiveRecord::Base
  belongs_to :pro_team
  belongs_to :pro_player
end
