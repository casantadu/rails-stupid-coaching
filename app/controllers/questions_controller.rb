class QuestionsController < ApplicationController
  def ask
end

  def answer
    @question = params[:answer]
    # logic in answer method, store answer in@answer=> display it in view
    if @question == 'I am going to work right now!'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
