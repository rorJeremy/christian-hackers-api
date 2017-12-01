require "rails_helper"

RSpec.describe ExpertsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/experts").to route_to("experts#index")
    end

    it "routes to #new" do
      expect(:get => "/experts/new").to route_to("experts#new")
    end

    it "routes to #show" do
      expect(:get => "/experts/1").to route_to("experts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/experts/1/edit").to route_to("experts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/experts").to route_to("experts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/experts/1").to route_to("experts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/experts/1").to route_to("experts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/experts/1").to route_to("experts#destroy", :id => "1")
    end

  end
end
