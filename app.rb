require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'


class Rock < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    erb :play
  end

  post '/play' do
    @player1 = $player1.name
    $choice = params[:choice]
    $game = Game.new($choice )
    @random = $game.random
    @result = $game.output
    redirect '/result'
  end

  get '/result' do
    @player1 = $player1.name
    @choice = $choice
    @game = $game
      erb :result
  end


  run! if app_file == $0
end


  #
  # get '/game' do
  #   @player = session[:player]
  #   erb :game
  # end
  #

  #
