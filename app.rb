require 'sinatra/base'
require_relative 'lib/player'

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
    @name_player_1 = $player_1.name
    @name_player_2 = $player_2.name
    @hit_points = $player_2.hit_points
    erb :play
  end

  get '/attack' do
    @name_player_1 = $player_1.name
    @name_player_2 = $player_2.name
    @hit_points = $player_2.hit_points
    erb :attack
  end
end
