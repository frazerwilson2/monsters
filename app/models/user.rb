class User < ActiveRecord::Base
  rolify
  has_many :relationships
  has_many :monsters, through: :relationships
	before_create :create_remember_token
	validates :name, presence: true, uniqueness: true

  def capture!(monster)
    relationships.create!(monster_id: monster.id)
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
