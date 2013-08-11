class Manager < ActiveRecord::Base
  belongs_to :user
  has_one :fantasy_team
end
