class QuizzesController < ApplicationController
  # before_action :authenticate_user
  # before_action :set_quiz, only: [:show, :update, :destroy]

  def quiz 
    quizes = Quiz.all
    render :json => quizes.to_json(:include => { :questions => { :include => :answers }})
  end 

end
