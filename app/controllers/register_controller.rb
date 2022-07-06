class RegisterController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
   
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Success. Account was created."
    else
      # flash[:alert] = "Invalid email or passwords did not match. Please try again."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end