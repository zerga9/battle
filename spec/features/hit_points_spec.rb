require 'capybara/rspec'
require_relative '../../app'

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mary: 60HP'
  end
end
