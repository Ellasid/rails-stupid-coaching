class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer =
      if @question.end_with?('?')
        'Silly question, get dressed and go to work!'
      elsif @question == 'I am going to work'
        'Great!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
