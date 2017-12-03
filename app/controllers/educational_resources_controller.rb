class EducationalResourcesController < ApplicationController
  before_action :set_educational_resource, only: [:show, :edit, :update, :destroy]

  # GET /educational_resources
  # GET /educational_resources.json
  def index
    @educational_resources = EducationalResource.all
  end

  # GET /educational_resources/1
  # GET /educational_resources/1.json
  def show
  end

  # GET /educational_resources/new
  def new
    @educational_resource = EducationalResource.new
  end

  # GET /educational_resources/1/edit
  def edit
  end

  # POST /educational_resources
  # POST /educational_resources.json
  def create
    @educational_resource = EducationalResource.new(educational_resource_params)

    respond_to do |format|
      if @educational_resource.save
        format.html { redirect_to @educational_resource, notice: 'Educational resource was successfully created.' }
        format.json { render :show, status: :created, location: @educational_resource }
      else
        format.html { render :new }
        format.json { render json: @educational_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educational_resources/1
  # PATCH/PUT /educational_resources/1.json
  def update
    respond_to do |format|
      if @educational_resource.update(educational_resource_params)
        format.html { redirect_to @educational_resource, notice: 'Educational resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @educational_resource }
      else
        format.html { render :edit }
        format.json { render json: @educational_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educational_resources/1
  # DELETE /educational_resources/1.json
  def destroy
    @educational_resource.destroy
    respond_to do |format|
      format.html { redirect_to educational_resources_url, notice: 'Educational resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educational_resource
      @educational_resource = EducationalResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def educational_resource_params
      params.require(:educational_resource).permit(:title, :description, :main_link, :secondary_link, :week, :campaign_id)
    end
end
