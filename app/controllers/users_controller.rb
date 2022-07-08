class UsersController < ApplicationController
  before_action :set_user

  def myprofile
    @user.update(gender: @user.gender)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
