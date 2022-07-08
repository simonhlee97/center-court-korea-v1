class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  # check and require user to be logged in
  # def require_user_logged_in!
  #   redirect_to new_user_session_path, alert: "You must be signed in." if Current.user.nil?
  # end
  
end
