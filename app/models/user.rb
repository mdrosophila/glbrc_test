class User < ApplicationRecord
  has_many :user_relationships, class_name: "Relationship",
                                foreign_key: "user_id",
                                dependent: :destroy
  has_many :applications, through: :user_relationships, source: :user                             
  validates :login, presence: true, length: { maximum: 50 }, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  # Add an app to a user
  def addApp(app)
    user_relationships.create(application_id: app.id)
  end
  
  # Remove an app from a user
  def removeApp(app)
    user_relationships.find_by(application_id: app.id).destroy
  end
end
