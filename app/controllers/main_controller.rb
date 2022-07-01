class MainController < ApplicationController
  def index
    # flash[:notice] = "You are logged in"
    # flash[:alert] = "Invalid email or password"
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end