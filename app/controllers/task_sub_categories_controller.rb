class TaskSubCategoriesController < ApplicationController
  before_action :set_task_sub_category, only: [:show, :edit, :update, :destroy]

  # GET /task_sub_categories
  # GET /task_sub_categories.json
  def index
    @task_sub_categories = TaskSubCategory.all
  end

  # GET /task_sub_categories/1
  # GET /task_sub_categories/1.json
  def show
  end

  # GET /task_sub_categories/new
  def new
    @task_sub_category = TaskSubCategory.new
  end

  # GET /task_sub_categories/1/edit
  def edit
  end

  # POST /task_sub_categories
  # POST /task_sub_categories.json
  def create
    @task_sub_category = TaskSubCategory.new(task_sub_category_params)

    respond_to do |format|
      if @task_sub_category.save
        format.html { redirect_to @task_sub_category, notice: 'Task sub category was successfully created.' }
        format.json { render :show, status: :created, location: @task_sub_category }
      else
        format.html { render :new }
        format.json { render json: @task_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_sub_categories/1
  # PATCH/PUT /task_sub_categories/1.json
  def update
    respond_to do |format|
      if @task_sub_category.update(task_sub_category_params)
        format.html { redirect_to @task_sub_category, notice: 'Task sub category was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_sub_category }
      else
        format.html { render :edit }
        format.json { render json: @task_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_sub_categories/1
  # DELETE /task_sub_categories/1.json
  def destroy
    @task_sub_category.destroy
    respond_to do |format|
      format.html { redirect_to task_sub_categories_url, notice: 'Task sub category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_sub_category
      @task_sub_category = TaskSubCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_sub_category_params
      params.require(:task_sub_category).permit(:title, :category_id)
    end
end
