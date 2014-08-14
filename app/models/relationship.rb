class Relationship < ActiveRecord::Base
	belongs_to :user
	belongs_to :monster
	validates :monster_id, presence: true
	validates :user_id, presence: true
end
