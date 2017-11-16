# == Schema Information
#
# Table name: drinks
#
#  id         :integer          not null, primary key
#  menu       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Drink < ApplicationRecord
  has_one :drink_count
  
  validates :menu, presence: true, uniqueness: true
end
