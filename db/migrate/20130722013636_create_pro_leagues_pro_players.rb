class CreateProLeaguesProPlayers < ActiveRecord::Migration
  def change
    create_table :pro_leagues_pro_players do |t|
      t.integer :pro_league_id
      t.integer :pro_player_id

      t.timestamps
    end
  end
end
