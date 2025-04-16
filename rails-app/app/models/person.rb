# == Schema Information
#
# Table name: people
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  household_id :integer          not null
#
# Indexes
#
#  index_people_on_household_id  (household_id)
#
# Foreign Keys
#
#  household_id  (household_id => households.id)
#
class Person < ApplicationRecord
  belongs_to :household
end
