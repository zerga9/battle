require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  #  enable :sessions

  get '/' do
    # 'Testing Infra Working!'
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name_player_1])
    $player_2 = Player.new(params[:name_player_2])
    redirect '/play'
  end

  get '/play' do
    @name_player_1 = $player_1
    @name_player_2 = $player_2
    # @hit_points = $player_2
    erb :play
  end

  get '/attack' do
    @name_player_1 = $player_1
    @name_player_2 = $player_2
    Game.new.attack(@name_player_2)
    erb :attack
  end
end
