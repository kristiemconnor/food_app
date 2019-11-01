class Ingredient < ApplicationRecord
  belongs_to :user
  validates :expiration, presence: true

# needs validation for user_id, looking for correct syntax

end
