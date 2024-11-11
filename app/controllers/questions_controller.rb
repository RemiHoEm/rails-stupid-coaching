class QuestionsController < ApplicationController
  def form
  end

  def answer
    @reponsecoachinterro = "Silly question, get dressed and go to work!"
    @reponsecoachtout = "I don't care, get dressed and go to work!"
    @reponsecoachwork = "Great!"

    if params[:form].end_with?("?")
      @reponsecoach = @reponsecoachinterro
    elsif params[:form].include?("I am going to work")
      @reponsecoach = @reponsecoachwork
    else
      @reponsecoach = @reponsecoachtout
    end
  end

end
