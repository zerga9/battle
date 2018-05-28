require 'capybara/rspec'
require_relative '../../app'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Theo Vs Mary'
  end
end
