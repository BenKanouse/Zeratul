class AddTypeToFantasyTeamPlayers < ActiveRecord::Migration
  def up
  	add_column :fantasy_team_players, :type, :string
  end
  def down
  	drop_column :fantasy_team_players, :type
  end
end
