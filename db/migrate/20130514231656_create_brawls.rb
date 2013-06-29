class CreateBrawls < ActiveRecord::Migration
  def up
    create_table :brawls do |t|
      t.integer  :week
      t.integer  :round
      t.date     :date

      t.timestamps
    end
  end

  def down
  	drop_table :brawls
  end
end
