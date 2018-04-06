require 'capybara/rspec'
require_relative '../../app'

feature 'Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Theo attacked Mary'
  end
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Mary attacked Theo'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Mary: 60HP'
    expect(page).to have_content 'Mary: 50HP'
  end
end
