require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/attack'

class Battle < Sinatra::Base
  #  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name_player_1])
    player_2 = Player.new(params[:name_player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
  Attack.run($game.opponent_of($game.current_turn))
  if $game.game_over?
    redirect '/game-over'
  else
    redirect '/attack'
  end
end

  get '/attack' do
    @game = $game
    erb :attack
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end
end
