class GameController < ApplicationController

  def choose
    @player_choice = params["choose"]

    # system_choice = Array.new
    system_choice = ["rock","paper","scissors"]
    @system_choice = system_choice[rand(2)]

    # rock beats scissors
    # paper beats rock
    # scissors beats paper

    if @player_choice == @system_choice
      @game_over = "tie game!"

    elsif @player_choice == "rock" && @system_choice == "scissors"
      @game_over = "you win!"

    elsif @player_choice == "paper" && @system_choice == "rock"
      @game_over = "you win!"

    elsif @player_choice == "scissors" && @system_choice == "paper"
      @game_over = "you win!"

    else
      @game_over = "you loose!"
    end

    return @game_over

  end

end
