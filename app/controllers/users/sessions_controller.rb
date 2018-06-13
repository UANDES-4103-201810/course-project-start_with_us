# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
   def new
     super
   end

  # POST /resource/sign_in
  def create
    puts request.env["omniauth.auth"].info
    puts request.env["omniauth.auth"].uid

    puts request.env["omniauth.auth"].credentials

    email = params[:user][:email]
    user = User.where(email: email).first
    a=1/0
    if user.nil?
      redirect_to '/users/sign_in'
      flash[:notice] = "Invalid Email or Password"
      return 0
    end
    if user.valid_password?(params[:user][:password])

      sign_in(user, scope: user)
      redirect_to '/'
    else
      redirect_to '/users/sign_in'
      flash[:notice] = "Invalid Email or Password"
    end
  end

  # DELETE /resource/sign_out
   def destroy
     super
   end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
