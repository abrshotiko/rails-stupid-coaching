class PagesController < ApplicationController
  def ask
  end

  def answer
    @search = params[:answer]

    # This method does not work and this is where I am stuck!!!
    if @search.downcase == 'i am going to work right now!'
      @answer = 'Great!'
    elsif @search.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
