class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    @content = MultimediaContent.where(:project_id => @project.id).first
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create

    @project = Project.create(project_params)

    categories=params[:categories]

    categories.each do |cat|
      cat=Category.find(cat)
      @project.categories<<cat
    end
    puts @project.categories.as_json
    respond_to do |format|
      if @project.save
        content = MultimediaContent.create(project_id: @project.id, profile_id: nil, item_id: nil, image: params[:project][:multimedia_content])
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { redirect_to '/projects/new'}
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def status
    project = Project.find(params[:id])
    method = params[:method]
    if method == "delete"
      project.update(status:"rejected")
      flash[:error] = "Project was Rejected"
      redirect_to "/projects/" + project.id.to_s
    elsif method == "accept"
      project.update(status:"published")
      flash[:notice] = "Project was Accepted"
      redirect_to "/projects/" + project.id.to_s
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:user_id, :title, :description, :goal_amount, :status, :delivery_date,)
    end

    def image_params
      params.require(:multimedia_content).permit(:project_id, :user_id, :item_id ,:image,:category_ids)
    end


end
