# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end


  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      # profile=Profile.find_by(user_id:@user.id)
      # if(profile.nil?)
      #   user_info=request.env["omniauth.auth"].info
      #   puts user_info
      #   username=user_info.username
      #   last_name=user_info.lastname
      #   profile=Profile.create(user_id:@user.id,name:username,last_name:last_name)
      #   multimedia=MultimediaContent.create(profile_id:profile.id)
      #
      # end

      puts("ENTROO")

      profile=Profile.find_by(user_id:@user.id)
      puts profile
      if(profile.nil?)
        data=request.env["omniauth.auth"]
        user_info=data[:info]
        name=user_info[:name]
        last_name=user_info[:last_name]
        profile=Profile.create(user:@user,name:name,last_name:last_name,about_me:"About me")
        MultimediaContent.create(profile:profile)
      end
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Google_oauth2") if is_navigational_format?
    else

      puts("ELSE")
      session["devise.google_oauth2_data"] = request.env["omniauth.auth"].except("extra")
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to home
  end
end
