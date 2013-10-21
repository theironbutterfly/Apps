require 'spec_helper'

describe Member do
  it 'can successfully add a member to a team' do
    team = Team.create!(:name => "wip", :email => "wip@gmail.com")
    member = Member.create! :name => "apoorva", :email => "apoorva@gmail.com"
    members = []
    members << member
    expect(members).to include(member)
  end

  it 'can not have a blank email' do
    expect(Member.new(:name => "wip")).to have(1).error_on(:email)
  end
  
  it "fails validation with no name expecting a specific message" do
    expect(Member.new(:email => "wip@gmail.com").errors_on(:name)).to include("can't be blank")
  end

  it "fails validation with no email expecting a specific message" do
    expect(Member.new(:name => "wip@gmail.com").errors_on(:email)).to include("can't be blank")
  end
end
