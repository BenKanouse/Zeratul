class CreateFantasyTeams < ActiveRecord::Migration
  def up
    create_table :fantasy_teams do |t|
      t.string   :name
      t.integer  :pro_team_id
      t.integer  :manager_id
      t.decimal  :team_sub_total
      t.decimal  :anti_team_sub_total

      t.timestamps
    end
  end

  def down
    drop_table :fantasy_teams
  end
end
