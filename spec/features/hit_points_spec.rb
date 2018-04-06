require 'capybara/rspec'
require_relative '../../app'

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :name_player_1, with: 'Theo'
    fill_in :name_player_2, with: 'Mary'
    click_button 'Submit'
    expect(page).to have_content 'Mary: 60HP'
  end
end
