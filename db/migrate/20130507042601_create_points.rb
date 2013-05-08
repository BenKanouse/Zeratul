class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :player_id
      t.integer :reason_id

      t.timestamps
    end
  end
end
