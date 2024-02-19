class QuestionsController < ApplicationController
  def ask
    # This action will simply render the 'ask' view.
  end

  def answer
    @question = params[:question]
    if @question.downcase == "i am going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
