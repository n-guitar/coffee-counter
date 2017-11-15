class DrinkCount < ApplicationRecord
  belongs_to :user
  belongs_to :drink
  validates :drink_id, presence: true
end
