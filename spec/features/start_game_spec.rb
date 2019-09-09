require "./spec/spec_helper.rb"

feature "Start new game" do
  scenario "Start new game with player inherited" do
    visit '/'
    fill_in :player, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content "Bob it's your turn"
  end
end
