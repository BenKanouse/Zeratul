class CreateProTeamsMatches < ActiveRecord::Migration
  def up
    create_table :pro_teams_matches do |t|
      t.integer  :pro_team_id
      t.integer  :match_id

      t.timestamps
    end
  end

  def down
    drop_table :games
  end
end
