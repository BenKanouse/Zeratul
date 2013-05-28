class CreateBrawlsProTeams < ActiveRecord::Migration
  def change
    create_table :brawls_pro_teams do |t|
      t.integer :brawl_id
      t.integer :pro_team_id

      t.timestamps
    end
  end
end
