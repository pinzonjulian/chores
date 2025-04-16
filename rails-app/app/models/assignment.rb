# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  position   :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  chore_id   :integer          not null
#  person_id  :integer          not null
#
# Indexes
#
#  index_assignments_on_chore_id   (chore_id)
#  index_assignments_on_person_id  (person_id)
#
# Foreign Keys
#
#  chore_id   (chore_id => chores.id)
#  person_id  (person_id => people.id)
#
class Assignment < ApplicationRecord
  belongs_to :chore
  belongs_to :person
end
