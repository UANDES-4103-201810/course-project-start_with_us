class ProfileController < ApplicationController
  def show
    @user = User.find(params[:id])
    @content = MultimediaContent.where(profile_id: @user.profile.id).first
    @projects = @user.projects

  end
  def update
    profile = params[:user][:profile_attributes]
    the_profile = Profile.find(profile[:id])
    the_profile.update(name: profile[:name], last_name: profile[:last_name], about_me: profile[:about_me])
    content = MultimediaContent.where(profile_id: the_profile.id).first
    if profile[:multimedia_contents] != nil
      if content == nil
        content = MultimediaContent.create(image: profile[:multimedia_contents][:image], project_id: nil, profile_id: the_profile.id, item_id: nil)
      else
        content.update(image: profile[:multimedia_contents][:image], project_id: nil, profile_id: the_profile.id, item_id: nil)
      end
    end
    redirect_to '/profile/' + current_user.id.to_s

  end
  def edit
    @user = User.find(params[:id])
    @have_content = MultimediaContent.where(profile_id: @user.profile.id).first
    @content = nil
    if @have_content == nil
      @content = MultimediaContent.new
    end
    @projects = @user.projects
  end
end
