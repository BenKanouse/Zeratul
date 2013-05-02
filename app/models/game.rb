class Game < ActiveRecord::Base
  has_many  :players, through: :players_games, limit: 2
  has_many  :players_games, limit: 2
  belongs_to  :match

  def winner
    #returns the winning player
  end

  def loser
  	#returns the losing player
  end
end