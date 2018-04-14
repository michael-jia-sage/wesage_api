require 'rails_helper'

RSpec.describe 'Apitest', type: :request do
  # initialize test data

  # Test suite for GET /apitest
  describe 'GET /apitest' do
    # make HTTP get request before each example
    before { get '/apitest' }

    it 'returns I am good to apitest' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json['value']).to eq('This is WeSage API, I am good.')
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
