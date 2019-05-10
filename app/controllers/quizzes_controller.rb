class QuizzesController < ApplicationController

  def quiz 
    quizes = Quiz.all

    render :json => quizes.to_json(:include => { :questions => { :include => :answers }})
  end 
  
end
