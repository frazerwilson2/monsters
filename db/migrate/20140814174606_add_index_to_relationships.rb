class AddIndexToRelationships < ActiveRecord::Migration
  def change
  	add_index :relationships, :user_id
    add_index :relationships, :monster_id
  end
end
