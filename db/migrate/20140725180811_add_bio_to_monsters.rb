class AddBioToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :bio, :string
  end
end
