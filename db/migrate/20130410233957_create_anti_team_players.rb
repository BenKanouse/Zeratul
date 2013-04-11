class CreateAntiTeamPlayers < ActiveRecord::Migration
  def up
  	create_table :anti_team_players do |t|
  		t.integer :fantasy_team_id
  		t.integer :player_id

  		t.timestamps
  	end
  end

  def down
  	drop_table :fantasy_team_players
  end
end
