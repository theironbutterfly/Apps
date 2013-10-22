require "spec_helper.rb"

describe "the meeting creation process", :type => :feature do
  before :each do
    Team.create(:name => 'wipitgood', :email => 'wipitgood@gmail.com')
  end

  it "creates a new meeting" do
    visit "/teams/1"
    within("#new_meeting") do
      fill_in 'meeting_name', :with => 'Integration Scrum'
      fill_in 'meeting_start_time', :with => '9:45'
      fill_in 'meeting_end_time', :with => '10'
      click_button 'Create Meeting'
    end
    expect(page).to have_content("Meeting Name: Integration Scrum")
    expect(page).to have_content("Meeting Start Time 9:45" )
    expect(page).to have_content("Meeting End Time 10" )

    meeting = Meeting.first
    expect(meeting.name).to eql("Integration Scrum")
    expect(meeting.start_time).to eql("9:45")
    expect(meeting.end_time).to eql("10")
  end
end
