class SessionsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:destroy]
  skip_after_action :verify_authorized

  def new
    @user = User.new
  end

  def create
    user_login = user_params
    user = User.authenticate(user_login[:username], user_login[:login_password])
  
    user = User.find_by(username: user_login[:username])

    if user
      session[:user_id] = user.id
      redirect_to new_chatroom_path
    else
      redirect_to login_path, flash[:notice] =  {username: ["Doesn't exist and/or password is incorrect"] }
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

    def user_params
      params.require(:user).permit(:username, :login_password)
    end
end
