require 'rails_helper'

RSpec.describe Plan, type: :model do
  # add gem for should matchers
  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe "Associations" do
    it { should have_many(:members) }
  end

  describe '#recurrent?' do
    context 'when both start date and end date are present' do
      let(:plan) { Plan.create(name: 'Premium', start_date: '2019-05-03', end_date: '2019-5-12') }

      it 'returns true' do
        expect(plan.recurrent?).to eq(false)
      end
    end

    context 'when either start date or end date is missing' do
      let(:plan) { Plan.create(name: 'Classic', start_date: nil, end_date: nil) }

      it 'returns false' do
        expect(plan.recurrent?).to eq(true)
      end
    end
  end
end
