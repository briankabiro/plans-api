class Plan < ApplicationRecord
  has_many :members

  validates_presence_of :name
  validates_uniqueness_of :name

  def time_limited?
    start_date.present? and end_date.present?
  end

  def recurrent?
    !time_limited?
  end
end

