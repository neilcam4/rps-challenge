require "./spec/spec_helper.rb"

feature 'Enter Names' do
  scenario "test that name has been entered and saved to session" do
    visit '/'
    fill_in :player, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content "Bob is ready to play Rock, Paper, Scissors"
  end
end
