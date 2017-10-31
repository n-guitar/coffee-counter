class DrinkCount < ApplicationRecord
  belongs_to :user
  belongs_to :drink
end
