class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @user_input = params[:question]
    @response = ""
    case
    when @user_input[-1] == "?"
      @response = "Silly question, get back to work!"
    when @user_input == "I am going to work"
      @response = "Great!"
    else
      @response = " I don't care, get dressed and go to work!"
    end
  end
end
