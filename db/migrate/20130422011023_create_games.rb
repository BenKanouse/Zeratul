class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.integer  :match_id
      t.integer  :map_id
      t.integer  :number

      t.timestamps
    end
  end

  def down
    drop_table :games
  end
end
