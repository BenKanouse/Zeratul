class RemoveAntiTeamPlayers < ActiveRecord::Migration
  def up
  	drop_table :anti_team_players
  end

  def down
  	create_table :anti_team_players do |t|
  		t.integer :fantasy_team_id
  		t.integer :player_id

  		t.timestamps
  	end
  end
end
