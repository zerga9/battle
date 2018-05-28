require 'capybara/rspec'
require_relative '../../app'

feature 'Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Theo attacked Mary'
  end
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Mary attacked Theo'
  end

  context 'when dealing with 10 HP' do
  before do
    allow(Kernel).to receive(:rand).and_return(10)
end
  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Mary: 60 HP'
    expect(page).to have_content 'Mary: 50 HP'
  end
end
end
