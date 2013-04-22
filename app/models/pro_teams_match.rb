class ProTeamsMatch < ActiveRecord::Base
  belongs_to :pro_team
  belongs_to :match
end
