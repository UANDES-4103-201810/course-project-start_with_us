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
end
