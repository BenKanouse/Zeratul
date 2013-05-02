class League <  ActiveRecord::Base
  has_and_belongs_to_many :fantasy_teams
end