require 'rails_helper'

RSpec.describe 'Slogan Contest', type: :request do
  describe 'GET /index' do
    before do
      for i in 1..10 do
        create_slogan_contest()
      end

      get '/slogan_contests'
    end
    
    it 'returns all slogans' do
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
