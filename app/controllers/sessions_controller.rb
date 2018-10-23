class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Welcome back, #{user.name}!"
      redirect_to user # change this later, when users are created by admins
    else
      flash.now[:danger] = "Incorrect login."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url # may have to remove this later too.
  end
end
