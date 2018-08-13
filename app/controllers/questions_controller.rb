class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:question]
    if @message == "I am going to work"
      @message = "Great"
    elsif @message[-1] == "?"
      @message = "Silly question, get dressed an go to work!"
    else
      @message = "i don't care, get dressed and go to work"
    end
  end
end
