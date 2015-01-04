class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(session_params[:email], session_params[:password], session_params[:remember_me])
    if user
      redirect_back_or_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password was invalid."
      render :new
    end
  end

  private

  def session_params
    params.permit(:email, :password, :remember_me)
  end
end
