class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @user = current_user
    @admin_role = Role.where(name:"admin").first
    @is_admin = false
    if @admin_role.id == @user.role_id
      @is_admin = true
    end
  end
end
