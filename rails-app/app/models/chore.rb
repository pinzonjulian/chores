# == Schema Information
#
# Table name: chores
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  schedule     :json             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  household_id :integer          not null
#
# Indexes
#
#  index_chores_on_household_id  (household_id)
#
# Foreign Keys
#
#  household_id  (household_id => households.id)
#
class Chore < ApplicationRecord
  belongs_to :household
end
