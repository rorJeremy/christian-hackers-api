require 'rails_helper'

RSpec.describe "EducationalResources", type: :request do
  describe "GET /educational_resources" do
    it "works! (now write some real specs)" do
      get educational_resources_path
      expect(response).to have_http_status(200)
    end
  end
end
