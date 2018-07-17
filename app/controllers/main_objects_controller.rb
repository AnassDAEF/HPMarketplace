class MainObjectsController < ApplicationController
  before_action :set_main_object, only: [:show, :edit, :update, :destroy]

  # GET /main_objects
  # GET /main_objects.json
  def index
    @main_objects = MainObject.all
  end

  # GET /main_objects/1
  # GET /main_objects/1.json
  def show
  end

  # GET /main_objects/new
  def new
    @main_object = MainObject.new
  end

  # GET /main_objects/1/edit
  def edit
  end

  # POST /main_objects
  # POST /main_objects.json
  def create
    @main_object = MainObject.new(main_object_params)

    respond_to do |format|
      if @main_object.save
        format.html { redirect_to @main_object, notice: 'Main object was successfully created.' }
        format.json { render :show, status: :created, location: @main_object }
      else
        format.html { render :new }
        format.json { render json: @main_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_objects/1
  # PATCH/PUT /main_objects/1.json
  def update
    respond_to do |format|
      if @main_object.update(main_object_params)
        format.html { redirect_to @main_object, notice: 'Main object was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_object }
      else
        format.html { render :edit }
        format.json { render json: @main_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_objects/1
  # DELETE /main_objects/1.json
  def destroy
    @main_object.destroy
    respond_to do |format|
      format.html { redirect_to main_objects_url, notice: 'Main object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_object
      @main_object = MainObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_object_params
      params.require(:main_object).permit(:adress1, :adress2, :zipcode, :city, :reference, :access_code, :appt_number, :surface_area, :object_type_id, :tenant_or_owner_id, :pro_in_charge_id)
    end
end
