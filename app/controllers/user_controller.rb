class UserController < ApplicationController
  def index

  end
  def new_user
    @user = User.new
    @user.build_profile
  end
  def create
    user = User.create(email: params[:user][:email], password: params[:user][:password], role_id: 1)
    email = params[:user][:email]
    profile_user = Profile.create(user_id: user.id, name: params[:user][:profile_attributes][:name],
                                  last_name: params[:user][:profile_attributes][:last_name],
                                  about_me: params[:user][:profile_attributes][:about_me])
  end
  def destroy

  end

end
