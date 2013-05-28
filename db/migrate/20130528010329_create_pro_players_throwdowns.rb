class CreateProPlayersThrowdowns < ActiveRecord::Migration
  def change
    create_table :pro_players_throwdowns do |t|
      t.integer :throwdown_id
      t.integer :pro_player_id
      t.boolean :win

      t.timestamps
    end
  end
end
