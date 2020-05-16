require 'rails_helper'

describe 'Plans API' do
  let(:valid_plan_attributes) do
    {
      name: 'Premium', start_date: '2019-05-03', end_date: '2019-5-12'
    }
  end

  let(:headers) { valid_headers }

  describe 'GET /plans' do
    before { get '/plans', headers: valid_headers }

    context 'when no plan has been created' do
      it 'returns an empty array' do
        expect(json).to be_empty
      end
    end

    context 'when a plan has been created' do
      let!(:plan) { Plan.create(valid_plan_attributes) }
      before { get '/plans', headers: valid_headers }

      it 'returns all created plans' do
        expect(json).not_to be_empty

        expect(plan).to be_valid
      end
    end
  end

  describe 'POST /plans' do
    it 'creates a plan successfully' do
      post "/plans", params: valid_plan_attributes, headers: valid_headers
      expect(json).to_not be_empty
    end
  end

  describe 'GET /plans/:plan_id/members' do
    let!(:plan) { Plan.create(valid_plan_attributes) }

    context 'when a plan has no members' do
      before { get "/plans/#{plan.id}/members", headers: valid_headers }

      it 'returns an empty array' do
        expect(json).to be_empty
      end
    end

    context 'when a plan has a member' do
      let!(:member) {
        Member.create({
          first_name: 'John',
          last_name: 'Doe',
          date_of_birth: '1985-12-1',
          plan_id: plan.id
        }
      )}

      before { get "/plans/#{plan.id}/members", headers: valid_headers }

      it 'returns the member' do
        expect(json).not_to be_empty

        expect(json.first['plan_id']).to eq(member['plan_id'])
      end
    end
  end
end