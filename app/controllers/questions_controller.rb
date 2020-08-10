class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answer = params[:answer]
    @answers = ["Great!","Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if answer == "I am going to work"
      @coach = @answers.first
    elsif answer.last == "?"
      @coach = @answers.second
    else
      @coach = @answers.last
    end
  end
end
