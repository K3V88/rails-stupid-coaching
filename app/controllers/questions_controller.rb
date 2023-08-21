class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]

    @answer = if @question == 'I am going to work'
                '- Great!'
              elsif @question.present? && @question.end_with?('?')
                '- Silly question, get dressed and go to work!'
              else
                "- I don't care, get dressed and go to work!"
              end
  end
end
