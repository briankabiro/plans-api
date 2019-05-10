require 'rails_helper'

describe 'Plans API' do
  describe 'GET /plans' do
    context 'when no plan has been created' do
      it 'returns an empty array' do

      end
    end

    context 'when a plan has been created' do
      it 'returns all created plans' do

      end
    end
  end

  describe 'POST /plans' do
    it 'creates a plan successfully' do
      
    end
  end

  describe 'GET /plans/:plan_id/members' do
    context 'when a plan has a member' do
      it 'returns the member' do
      end 
    end
    
    context 'when a plan has no members' do
      it 'returns an empty array' do
      end
    end
  end
end