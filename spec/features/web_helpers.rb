def sign_in_and_play
  visit('/')
  fill_in :name_player_1, with: 'Theo'
  fill_in :name_player_2, with: 'Mary'
  click_button 'Submit'
end
