def sign_in_and_play
  visit('/')
  fill_in :name_player_1, with: 'Theo'
  fill_in :name_player_2, with: 'Mary'
  click_button 'Submit'
end

def attack_and_confirm
  click_button 'Attack'
  click_button 'OK'
end
