class Monster < ActiveRecord::Base
	has_many :relationships
    has_many :users, through: :relationships
	validates :name, presence: true, uniqueness: true
	validates :bio, presence: true
end
