require 'spec_helper'

describe 'Application' do
  describe 'GET /' do
    it 'renders home page' do
      get '/'
      
      expect(last_response.status).to eq 200
      expect(last_response.body).to include 'Application Template'
    end
  end
end