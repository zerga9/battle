require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    # 'Testing Infra Working!'
    erb :index
  end

  post '/names' do
    @name_player_1 = params[:name_player_1]
    @name_player_2 = params[:name_player_2]
    erb :play
  end
end
