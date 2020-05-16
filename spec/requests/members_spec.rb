require 'rails_helper'

describe 'Members' do
  let(:valid_member_attributes) do
    {
      "first_name": "John",
      "last_name": "Doe",
      "date_of_birth": "1988-04-03"
    }
  end

  let(:headers) { valid_headers }

  let(:valid_plan_attributes) do
    {
      name: 'Premium', start_date: '2019 -05-03', end_date: '2019-5-12'
    }
  end

  describe 'POST /members' do
    it 'creates a member' do
      post('/members', params: valid_member_attributes, headers: valid_headers)

      expect(json).not_to be_empty
    end
  end

  describe 'PUT /members/:id' do
    context 'when a valid plan id is passed in' do
      let(:plan) { Plan.create(valid_plan_attributes) }

      it 'assigns it to the member' do
        post '/members', params: valid_member_attributes, headers: valid_headers
        put "/members/#{Member.first.id}", params: { "plan_id": plan.id }, headers: valid_headers

        expect(Member.first.plan_id).to eq(plan.id)
      end
    end
  end
end