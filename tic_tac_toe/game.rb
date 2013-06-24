require 'sinatra/base'
require 'sinatra/flash'
require_relative './lib/tic_tac_toe'

class TicTacToe < Sinatra::Base
  
  helpers do
    def generate_new_game
      if session[:current_tictactoe] && session[:set_tictactoe]
        tictactoe_puzzle = TicTacToe.new(session[:current_tictactoe])
      else
        session[:set_tictactoe] = tictactoe_puzzle.to_s
        session[:current_tictactoe] = tictactoe_puzzle.to_s
  end

  def game_finished
    if @game.finished?
      @winner = @game.current_player
      @msg = "you won"
      erb :home
end