class BrawlsProTeam < ActiveRecord::Base
  belongs_to :brawl
  belongs_to :pro_team

  def win
  	# check the pro_teams_throwdowns to see if the team has won.
  end
end
