class CategoriesController < ApplicationController

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    set_category

  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to '/admin', notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  def search_by_category
    category = Category.where(name: params["category"]).first
    @projects = Project.where("title LIKE ? OR description LIKE ?", "%#{params["category"]}%", "%#{params["category"]}%")
    if category != nil
      @projects = category.project
    else
    end
    render :template => "projects/index"
  end
  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    set_category
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to '/admin', notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    set_category
    @category.delete
    respond_to do |format|
      format.html { redirect_to admin_url+"/#categories_div", notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
