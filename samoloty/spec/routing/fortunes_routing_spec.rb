require "spec_helper"

describe FortunesController do
  describe "routing" do

    it "routes to #index" do
      get("/fortunes").should route_to("fortunes#index")
    end

    it "routes to #new" do
      get("/fortunes/new").should route_to("fortunes#new")
    end

    it "routes to #show" do
      get("/fortunes/1").should route_to("fortunes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fortunes/1/edit").should route_to("fortunes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fortunes").should route_to("fortunes#create")
    end

    it "routes to #update" do
      put("/fortunes/1").should route_to("fortunes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fortunes/1").should route_to("fortunes#destroy", :id => "1")
    end

  end
end
