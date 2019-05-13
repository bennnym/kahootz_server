class UsersController < ApplicationController

  def create
    @user = User.new user_params
    if @user.save #returns true or false this checks if passwords have been entered properly etc
      # session[:user_id] = @user.id
      # session[:username] = @user.username
      # session[:admin] = @user.admin
    # redirect_to "http://localhost:3000/?#{ @user.username }", :overwrite_params => { :parm => 'foo' } ## change this to the actual link 
      # redirect_to new_user_path
    # else
    #   render :new
    raise 'hell'
    end
  end



    private
    def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
    end



end
