class Member < ApplicationRecord
  has_secure_password

  belongs_to :plan, optional: true

  validates_presence_of :first_name, :last_name, :email, :date_of_birth, :password

  validates_uniqueness_of :email
  validates_format_of :email, with: /@/

  def is_admin?
    admin
  end
end
