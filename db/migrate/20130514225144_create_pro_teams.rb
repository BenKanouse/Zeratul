class CreateProTeams < ActiveRecord::Migration
  def up
    create_table :pro_teams do |t|
        t.string :name
        t.timestamps
    end
  end

  def down
    drop_table :pro_teams
  end
end
