class Ingredient < ApplicationRecord
  belongs_to :user
  validates :expiration, presence: true, user_id: true
end
