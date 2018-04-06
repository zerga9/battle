require 'sinatra/base'

class Battle < Sinatra::Base
  #  enable :sessions

  get '/' do
    # 'Testing Infra Working!'
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name_player_1]).name
    $player_2 = Player.new(params[:name_player_2]).name
    redirect '/play'
  end

  get '/play' do
    @name_player_1 = $player_1
    @name_player_2 = $player_2
    erb :play
  end

  get '/attack' do
    @name_player_1 = $player_1
    @name_player_2 = $player_2
    erb :attack
  end
  run!
end
