class InspectionTemplatesController < ApplicationController
  before_action :set_inspection_template, only: [:show, :edit, :update, :destroy, :generate]

  # GET /inspection_templates
  # GET /inspection_templates.json
  def index
    @inspection_templates = InspectionTemplate.all
  end

  # GET /inspection_templates/1
  # GET /inspection_templates/1.json
  def show
  end

  # GET /inspection_templates/new
  def new
    @inspection_template = InspectionTemplate.new
  end

  # GET /inspection_templates/1/edit
  def edit
  end

  # POST /inspection_templates
  # POST /inspection_templates.json
  def create
    @inspection_template = InspectionTemplate.new(inspection_template_params)

    respond_to do |format|
      if @inspection_template.save
        format.html { redirect_to @inspection_template, notice: 'Inspection template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inspection_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @inspection_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspection_templates/1
  # PATCH/PUT /inspection_templates/1.json
  def update
    respond_to do |format|
      if @inspection_template.update(inspection_template_params)
        format.html { redirect_to @inspection_template, notice: 'Inspection template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inspection_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspection_templates/1
  # DELETE /inspection_templates/1.json
  def destroy
    @inspection_template.destroy
    respond_to do |format|
      format.html { redirect_to inspection_templates_url }
      format.json { head :no_content }
    end
  end

  def generate
    @inspection = @inspection_template.generate
    respond_to do |format|
      format.html { redirect_to inspection_path(@inspection), notice: 'Inspection was successfully created.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection_template
      @inspection_template = InspectionTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inspection_template_params
      params[:inspection_template]
    end
end
