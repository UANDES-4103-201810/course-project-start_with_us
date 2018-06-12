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

  def fund_request
    user_id = current_user
    if user_id.nil?
      user = User.find_by(token: params[:token])
      user_id = User.find_by(token: params[:token]).id
      sing_in(:user, user)
    else
      user_id = current_user.id
    end
    @funds = Founding.where(state: "waiting")
    @my_request = []
    @funds.each do |f|
      if f.project.user_id == current_user.id
        @my_request.push(f)
      end
    end
  end

  def my_wishlist
    @user = User.find(current_user.id)
  end

  def my_foundings
    @user=User.find(current_user.id)

    @my_foundings_rows=Founding.where(user_id:@user.id)
  end

  def remove_from_wishlist
    wishlist_project = WishlistProject.where(project_id:params[:project], wishlist_id:params[:wishlist]).first
    wishlist_project.destroy
    flash[:wishlist] = "Project was removed from your wishlist"
    redirect_to '/my_wishlist'

  end
  def accept_fund
    @fund = Founding.find(params[:id])
    @fund.update(state: "accepted")
    flash[:accepted_fund] = "You have accepted the fund request!"
    redirect_to '/fund_request'
  end
  def reject_fund
    @fund = Founding.find(params[:id])
    @fund.update(state: "rejected")
    flash[:rejected_fund] = "You have rejected the fund request!"
    redirect_to '/fund_request'
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
  def create_promise
    quantity = params[:quantity]
    description = params[:description]
    image = params[:image]
    project = Project.find(params[:project_id])
    price = params[:price]
    Promise.create(project_id:project.id, price:price, quantity:quantity, description:description)
    flash[:created_promise] = "The promise was created!"
    redirect_to '/projects/' + params[:project_id].to_s + '/edit'
  end
  def delete_promise
    promise = Promise.find(params[:id])
    promise.destroy()
    flash[:deleted_promise] = "The promise was deleted!"
    redirect_to '/projects/' + params[:project_id].to_s + '/edit'

  end
end
