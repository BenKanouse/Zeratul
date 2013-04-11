class CreatePlayers < ActiveRecord::Migration
  def up
  	create_table :players do |t|
  		t.string  :first_name
  		t.string  :last_name
  		t.string  :name
  		t.integer :race_id
  		t.integer :pro_team_id

  		t.timestamps
  	end
  end

  def down
  	drop_table :players
  end
end
