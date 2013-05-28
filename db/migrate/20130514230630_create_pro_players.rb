class CreateProPlayers < ActiveRecord::Migration
  def change
    create_table :pro_players do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :name
      t.integer :pro_team_id

      t.timestamps
    end
  end
end
