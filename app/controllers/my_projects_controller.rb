class MyProjectsController < ApplicationController
  before_action :authenticate_user!

  def index

  end


  def view_all

    @user=User.find_by(id:current_user.id)

  end

  def split_email(email)
    return email.split('@')[0]
  end


  def my_wishlist
    @user = User.find(current_user.id)
  end

  def add_to_wishlist
    @user = User.find(current_user.id)
    exist = WishlistProject.where(wishlist_id: @user.wishlist, project_id: params[:id]).first
    wishlist = @user.wishlist
    if !wishlist.nil?
      Wishlist.create(user_id: @user.id)
      wishlist = @user.wishlist
    end
    if !exist.nil?
      value = {:"success" => "exist"}
      render :json => value
      return false
    end
    add = WishlistProject.create(wishlist_id: @user.wishlist.id, project_id: params[:id])
    value = {:"success" => true}
    render :json => value
  end
end
