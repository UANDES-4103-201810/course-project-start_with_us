class MyProjectsController < ApplicationController
  def index

  end
  def view_all
    id_param=params[:id]
    if id_param.nil?
      redirect_to home_url
    end

    @user=User.find_by(id:id_param)

    if @user.nil?
      redirect_to home_url

    else
    end



  end


  def split_email(email)
    return email.split('@')[0]
  end


end
