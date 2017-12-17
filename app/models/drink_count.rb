# == Schema Information
#
# Table name: drink_counts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  cnt        :boolean
#  drink_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DrinkCount < ApplicationRecord
  belongs_to :user
  belongs_to :drink
  validates :drink_id, presence: true
  validates :user_id, presence: true
end
