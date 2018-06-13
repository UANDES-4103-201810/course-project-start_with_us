# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up


  def new
    @user = User.new
   end

  # POST /resource
  def create
     super do |user|
       name="Username"
       last_name="Last name"
       if data = session["devise.google_oauth2_data"]
         user_info=data[:info]
         name=user_info[:name]
         last_name=user_info[:last_name]
       end

       profile=Profile.create(user:user,name:name,last_name:last_name,about_me:"About_me")
       MultimediaContent.create(profile:profile)
     end
  end

  # GET /resource/edit
   def edit
     super
   end

  # PUT /resource
   def update
     super
   end

  # DELETE /resource
   def destroy
     user=User.find(params[:id])
     user.destroy
     redirect_to admin_url
   end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
   def cancel
     super
   end

   protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
   end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
   end

  # The path used after sign up.
   def after_sign_up_path_for(resource)
     super(resource)
   end

  # The path used after sign up for inactive accounts.
   def after_inactive_sign_up_path_for(resource)
     super(resource)
   end
end
