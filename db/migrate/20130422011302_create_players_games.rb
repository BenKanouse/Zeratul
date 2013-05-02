class CreatePlayersGames < ActiveRecord::Migration
  def up
    create_table :players_games do |t|
      t.integer  :player_id
      t.integer  :game_id
      t.boolean  :win

      t.timestamps
    end
  end

  def down
    drop_table :players_games
  end
end
