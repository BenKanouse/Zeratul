class CreateProLeagues < ActiveRecord::Migration
  def change
    create_table :pro_leagues do |t|
      t.string  :name

      t.timestamps
    end
  end
end
