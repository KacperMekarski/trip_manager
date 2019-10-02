require "rails_helper"

RSpec.describe AttractionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/attractions").to route_to("attractions#index")
    end

    it "routes to #show" do
      expect(:get => "/attractions/1").to route_to("attractions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/attractions").to route_to("attractions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/attractions/1").to route_to("attractions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/attractions/1").to route_to("attractions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/attractions/1").to route_to("attractions#destroy", :id => "1")
    end
  end
end
