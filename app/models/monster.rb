class Monster < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :bio, presence: true
end
