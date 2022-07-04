class PasswordResetsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      # send email using Rails' action-mailer
      PasswordMailer.with(user: @user).reset.deliver_now
      
    end
      redirect_to root_path, notice: "If that account exists, email has been sent with a link to reset password"
  end

end