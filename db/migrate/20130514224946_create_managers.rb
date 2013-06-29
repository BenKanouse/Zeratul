class CreateManagers < ActiveRecord::Migration
  def up
  	create_table :managers do |t|
  		t.string   :name
  		t.timestamps
  	end
  end

  def down
  	drop_table :managers
  end
end
