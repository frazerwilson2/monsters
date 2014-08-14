class AddUserMonsterRelationship < ActiveRecord::Migration
  def change
  	create_table :users_monsters do |t|
      t.integer :user_id
      t.integer :monster_id
      t.timestamps
    end
  end
end
