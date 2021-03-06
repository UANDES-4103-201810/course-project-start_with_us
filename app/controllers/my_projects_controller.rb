class MyProjectsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: :add_to_wishlist

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

    @user = User.find (current_user.id)

    if @user.nil?
      flash_notice="You must sign in"
      value = {:"success" => "exist",flash:flash_notice}
      puts flash
      render :json => value

    end
    wishlist = @user.wishlist

    if wishlist.nil?
      Wishlist.create(user_id: @user.id)
      wishlist = @user.wishlist
      puts wishlist.nil?
    end


    project_id=params[:id]

    the_project=Project.find_by(id:project_id,user_id:@user.id)

    puts the_project
    if !the_project.nil?
      flash_notice="You cannot add your project to wishlist"
      value = {:"success" => "exist",flash:flash_notice}
      render :json => value
      return false
    end

    exist = WishlistProject.find_by(wishlist_id:wishlist.id, project_id: project_id)

    if !exist.nil?
      flash_notice="The project already exists in your wishlist"
      value = {:"success" => "exist",flash:flash_notice}

      render :json => value
      return false
    end

    flash_notice="Project added to wishlist"
    add = WishlistProject.create(wishlist_id: @user.wishlist.id, project_id: params[:id])
    value = {:"success" => true,flash:flash_notice}
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

  def create_item
    promise = params[:promise_id]
    image = params[:image]
    name = params[:name]
    item = Item.create(promise_id:promise, name:name)
    multimedia = MultimediaContent.create(item_id:item.id, name:name ,image:image)
    flash[:item_created] = "The item was created!"
    redirect_to '/projects/' + params[:project_id].to_s + '/edit'
  end


end
