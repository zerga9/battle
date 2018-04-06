require 'capybara/rspec'
require_relative '../../app'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name_player_1, with: 'Theo'
    fill_in :name_player_2, with: 'Mary'
    click_button 'Submit'
    expect(page).to have_content 'Theo vs. Mary'
  end
end
