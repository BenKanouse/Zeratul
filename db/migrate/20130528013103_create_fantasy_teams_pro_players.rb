class CreateFantasyTeamsProPlayers < ActiveRecord::Migration
  def change
    create_table :fantasy_teams_pro_players do |t|
      t.integer :fantasy_team_id
      t.integer :pro_player_id
      t.string  :type

      t.timestamps
    end
  end
end
