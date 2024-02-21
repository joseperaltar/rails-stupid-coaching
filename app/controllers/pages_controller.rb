ANSWERS = {
  question: 'Silly question, get dressed and go to work!.',
  wrong: "I don't care, get dressed and go to work!"
}

class PagesController < ApplicationController
  def home; end

  def answer
    @question = params[:question] if params[:question].present?
    @answer = @question.last == '?' ? ANSWERS[:question] : ANSWERS[:wrong]
    @answer = 'Great!' if @question.downcase == 'i am going to work'
  end
end
