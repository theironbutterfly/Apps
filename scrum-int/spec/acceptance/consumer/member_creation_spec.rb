require "spec_helper.rb"

describe "the member creation process", :type => :feature do
  before :each do
    Team.create(:name => 'wipitgood', :email => 'wipitgood@gmail.com')
  end

  it "creates a new member" do
    visit "/teams/1"
    within("#new_member") do
      fill_in 'member_name', :with => 'Apoorva'
      fill_in 'member_email', :with => 'Ap@gmail.com'
      click_button 'Create Member'
    end
    expect(page).to have_content("Member: Apoorva")
    expect(page).to have_content("Email Ap@gmail.com" )
    member = Member.first
    expect(member.name).to eql("Apoorva")
    expect(member.email).to eql("Ap@gmail.com")
  end
end
