# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  mail       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  disabled   :boolean          default(FALSE)
#

class User < ApplicationRecord
  has_one :drink_count
  validates :name, presence: true, uniqueness: true
end
