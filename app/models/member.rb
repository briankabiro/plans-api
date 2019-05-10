class Member < ApplicationRecord
  belongs_to :plan, optional: true

  validates_presence_of :first_name, :last_name, :date_of_birth
end
