require 'spec_helper'

describe TeamsController do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
    it "assigns @teams" do
      team = Team.create(:name => "wipitgood", :email => "wiptitgood@gmail.com")
      get :index
      expect(assigns(:teams)).to eq([team])
    end
  end

  describe "POST create" do
    it "creates a Team" do
      post :create, :team => { :name => "wipitgood", :email => "wipitgood@gmail.com"}
      expect(response).to redirect_to team_path(assigns(:team))
    end
  end
end
