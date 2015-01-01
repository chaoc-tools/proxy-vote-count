class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


  # private

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def session_params
  #     params.require(:user).permit(:name, :provider, :uid)
  #   end
end
