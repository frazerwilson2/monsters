class DropUsersMonsters < ActiveRecord::Migration
  def change
  	drop_table :users_monsters
  end
end
