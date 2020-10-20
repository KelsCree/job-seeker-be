class User < ApplicationRecord
  has_secure_password
  has_many :Applications
  has_many :Reccomendations
end
