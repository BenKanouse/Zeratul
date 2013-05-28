class CreateProTeamsProPlayers < ActiveRecord::Migration
  def up
    create_table :pro_teams_pro_players do |t|
      t.integer :pro_team_id
      t.integer :pro_player_id

      t.timestamps
    end
  end

  def down
  	drop_table :pro_teams_pro_players
  end
end
