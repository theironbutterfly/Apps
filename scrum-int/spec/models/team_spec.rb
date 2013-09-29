require 'spec_helper'

describe Team do
  it 'can successfully add a team' do
    team = Team.create! :name => "wip", :email => "wip@gmail.com"
    t = []
    t << team
    expect(t).to include(team)
  end

  it 'can not have a blank email' do
    expect(Team.new :name => "wip").to have(1).error_on(:email)
  end
  
  it "fails validation with no name expecting a specific message" do
    expect(Team.new(:email => "wip@gmail.com").errors_on(:name)).to include("can't be blank")
  end

  it "fails validation with no email expecting a specific message" do
    expect(Team.new(:name => "wip@gmail.com").errors_on(:email)).to include("can't be blank")
  end

end
