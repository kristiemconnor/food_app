class User < ApplicationRecord

  has_many :ingredients
  has_secure_password
  validates :email, presence: true, uniqueness: true

end
