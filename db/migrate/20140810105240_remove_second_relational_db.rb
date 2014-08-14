class RemoveSecondRelationalDb < ActiveRecord::Migration
  def change
  	drop_table :monsters_users
  end
end
