class Match < ActiveRecord::Base
  has_many :pro_teams, through: :pro_teams_matches, limit: 2
  has_many :pro_teams_matches, limit: 2
  has_many :games

  def winner
    #returns the winning team
  end

  def loser
  	#returns the losing team
  end
end