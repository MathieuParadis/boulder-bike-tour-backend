require 'rails_helper'

RSpec.describe 'Slogan Contest', type: :request do
  describe 'POST /create' do

    context 'with valid parameters' do
      let!(:my_slogan) { FactoryBot.create(:slogan_contest) }

      before do
        post '/slogan_contests', params:
                          { slogan_contest: {
                            first_name: my_slogan.first_name,
                            last_name: my_slogan.last_name,
                            email: my_slogan.email,
                            slogan: my_slogan.slogan
                          } }
      end

      it 'returns the first_name' do
        expect(json['first_name']).to eq(my_slogan.first_name)
      end

      it 'returns the last_name' do
        expect(json['last_name']).to eq(my_slogan.last_name)
      end

      it 'returns the email' do
        expect(json['email']).to eq(my_slogan.email)
      end

      it 'returns the slogan' do
        expect(json['slogan']).to eq(my_slogan.slogan)
      end
    end


    context 'with invalid parameters' do
      before do
        post '/slogan_contests', params:
                          { slogan_contest: {
                            first_name: '',
                            last_name: '',
                            email: '',
                            slogan: ''
                          } }
      end

      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end


  end
end
