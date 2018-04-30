class ProfileController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user.profile.build_multimedia_contents
  end
  def update

  end
end
