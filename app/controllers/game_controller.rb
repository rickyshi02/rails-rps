class GameController < ApplicationController

  def rock
    @opp = ["rock", "paper", "scissors"].sample
    @you = "rock"
    if @opp == "rock"
      @result = "tied"
    elsif @opp == "paper"
      @result = "lost"
    elsif @opp == "scissors"
      @result = "won"
    end

    render({ :template => "game_templates/body"})
  end

  def paper
    @opp = ["rock", "paper", "scissors"].sample
    @you = "paper"
    if @opp == "rock"
      @result = "won"
    elsif @opp == "paper"
      @result = "tied"
    elsif @opp == "scissors"
      @result = "lost"
    end

    render({ :template => "game_templates/body", })
  end

  def scissors
    @opp = ["rock", "paper", "scissors"].sample
    @you = "scissors"
    if @opp == "rock"
      @result = "lost"
    elsif @opp == "paper"
      @result = "won"
    elsif @opp == "scissors"
      @result = "tied"
    end
    render({ :template => "game_templates/body"})
  end

  def rules
    render({ :template => "game_templates/rules"})
  end

end
