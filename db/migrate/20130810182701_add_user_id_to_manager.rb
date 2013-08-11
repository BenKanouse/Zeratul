class AddUserIdToManager < ActiveRecord::Migration
  def change
    add_column :managers, :user_id, :integer
  end
end
