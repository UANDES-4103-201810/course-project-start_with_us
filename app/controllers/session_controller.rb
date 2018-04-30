class SessionController < ApplicationController
  skip_before_action :verify_authenticity_token
  def login
    @login = User.new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user.valid_password?(params[:user][:password])
      session[:current_session_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end
end
