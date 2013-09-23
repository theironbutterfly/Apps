require 'spec_helper'

describe Team do
  it 'can successfully add a team' do
    team = Team.new
    team.name = "wipitgood"
    team.email = "wip@gmail.com"
    team.save
    expect(Team.find(1)).to eq(team)
  end
end
