require 'spec_helper'

describe Member do
  it 'can successfully add a member to a team' do
    team = Team.new
    team.members.name = "apoorva"
    team.members.email = "ap@gmail.com"
    team.member.save
    expect(Team.member.find(1)).eq(team.members)   
  end
end
