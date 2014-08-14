class AddHabtmTable < ActiveRecord::Migration
  def change
  	create_table :monsters_users do |t|
      t.integer :monster_id
      t.integer :user_id
    end
  end
end
