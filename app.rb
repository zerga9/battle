require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    # 'Testing Infra Working!'
    erb :index
  end
  get '/play' do
    @name_player_1 = session[:name_player_1]
    @name_player_2 = session[:name_player_2]
    erb :play
  end

  post '/names' do
    session[:name_player_1] = params[:name_player_1]
    session[:name_player_2] = params[:name_player_2]
    redirect '/play'
  end

  get '/attack' do
    @name_player_1 = session[:name_player_1]
    @name_player_2 = session[:name_player_2]
    erb :attack
  end
end
