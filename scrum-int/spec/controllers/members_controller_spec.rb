require 'spec_helper'

describe MembersController do
  describe "POST create" do
    it "creates a Member" do
      team = Team.create!(:name => "wipitgood", :email => "wip@gmail.com")
      member = team.members.create!
      post :create, :member => {:name => "test", :email => "test@gmail.com"}
      expect(response).to redirect_to team_path(assigns(:team))
    end
  end
end
