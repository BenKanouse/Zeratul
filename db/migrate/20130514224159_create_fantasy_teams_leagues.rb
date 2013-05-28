class CreateFantasyTeamsLeagues < ActiveRecord::Migration
  def up
    create_table :fantasy_teams_leagues do |t|
      t.integer  :league_id
      t.integer  :fantasy_team_id
      t.timestamps
    end
  end

  def down
    drop_table :fantasy_teams_leagues
  end
end
