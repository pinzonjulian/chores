require "rails_helper"

RSpec.describe ChoresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/chores").to route_to("chores#index")
    end

    it "routes to #new" do
      expect(get: "/chores/new").to route_to("chores#new")
    end

    it "routes to #show" do
      expect(get: "/chores/1").to route_to("chores#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/chores/1/edit").to route_to("chores#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/chores").to route_to("chores#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/chores/1").to route_to("chores#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/chores/1").to route_to("chores#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/chores/1").to route_to("chores#destroy", id: "1")
    end
  end
end
