class Manager < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user, :inverse_of => :manager
  has_one :fantasy_team
end
