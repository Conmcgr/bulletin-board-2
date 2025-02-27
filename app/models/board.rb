# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Board < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)
  belongs_to(:user, foreign_key: "user_id", class_name: "User")
end
