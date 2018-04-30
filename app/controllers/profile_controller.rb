class ProfileController < ApplicationController
  def show
    @user = User.find(params[:id])
    @content = MultimediaContent.new
    @projects = @user.projects
  end
  def update

  end
end
