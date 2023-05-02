require "rails_helper"

RSpec.describe CourtTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/court_types").to route_to("court_types#index")
    end

    it "routes to #new" do
      expect(get: "/court_types/new").to route_to("court_types#new")
    end

    it "routes to #show" do
      expect(get: "/court_types/1").to route_to("court_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/court_types/1/edit").to route_to("court_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/court_types").to route_to("court_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/court_types/1").to route_to("court_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/court_types/1").to route_to("court_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/court_types/1").to route_to("court_types#destroy", id: "1")
    end
  end
end
