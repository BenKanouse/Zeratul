class CreateThrowdowns < ActiveRecord::Migration
  def change
    create_table :throwdowns do |t|
      t.integer :brawl_id
      t.integer :set

      t.timestamps
    end
  end
end
