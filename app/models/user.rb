class User < ApplicationRecord
  has_secure_password
  has_many :applications
  has_many :reccomendations
  has_many :interviews, through: :applications
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
