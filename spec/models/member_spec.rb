require 'rails_helper'

RSpec.describe Member, type: :model do
  describe "Associations" do
    it { should belong_to(:plan) }
  end

  describe "Validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:date_of_birth) }
  end
end
