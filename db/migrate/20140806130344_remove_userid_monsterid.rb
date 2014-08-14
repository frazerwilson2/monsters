class RemoveUseridMonsterid < ActiveRecord::Migration
  def change
    remove_column :users, :monster_id, :integer
    remove_column :monsters, :user_id, :integer
  end
end
