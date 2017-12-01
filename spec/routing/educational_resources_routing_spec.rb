require "rails_helper"

RSpec.describe EducationalResourcesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/educational_resources").to route_to("educational_resources#index")
    end

    it "routes to #new" do
      expect(:get => "/educational_resources/new").to route_to("educational_resources#new")
    end

    it "routes to #show" do
      expect(:get => "/educational_resources/1").to route_to("educational_resources#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/educational_resources/1/edit").to route_to("educational_resources#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/educational_resources").to route_to("educational_resources#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/educational_resources/1").to route_to("educational_resources#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/educational_resources/1").to route_to("educational_resources#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/educational_resources/1").to route_to("educational_resources#destroy", :id => "1")
    end

  end
end
