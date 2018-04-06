require 'capybara/rspec'
require_relative '../../app'

feature 'Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Theo attacked Mary'
  end
  # scenario 'attack Player 2' do
  #   sign_in_and_play
  #   click_link 'Attack'
  #   expect(page).to have_content 'Mary: 50HP'
  # end
end
