class HomeController < ApplicationController
  def index
    @projects = Project.offset(rand(Project.count)).limit(2)
  end
end
