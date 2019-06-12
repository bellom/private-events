class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid user'
      render 'new'
    end
  end

  def destroy
  end

  private 
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
end