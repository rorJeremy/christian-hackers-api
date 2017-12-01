require 'rails_helper'

RSpec.describe "Experts", type: :request do
  describe "GET /experts" do
    it "works! (now write some real specs)" do
      get experts_path
      expect(response).to have_http_status(200)
    end
  end
end
