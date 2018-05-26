class AdminController < ApplicationController
  before_action :authenticate_user!
def index
  @categories=Category.all
end

  def get_categories

  @categories=Category.all


  end


  def delete_user
    user=User.find(params[:id])

    user.destroy
    redirect_to admin_url
  end



def get_users
  users=User.all()
  users_response=[]
  users.each do |user|


    role_name=user.role.name
    user_profile=user.profile
    user=user.as_json
    if !user_profile.nil?
      user["name"]=user_profile.name+" "+user_profile.last_name
    end

    user["role_name"]=role_name
    users_response.append(user)
  end
  render json:users_response.as_json
end

end
