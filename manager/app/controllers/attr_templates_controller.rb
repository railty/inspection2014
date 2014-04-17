class AttrTemplatesController < ApplicationController
  before_action :set_attr_template, only: [:show, :edit, :update, :destroy]

  # GET /attr_templates
  # GET /attr_templates.json
  def index
    @attr_templates = AttrTemplate.all
  end

  # GET /attr_templates/1
  # GET /attr_templates/1.json
  def show
  end

  # GET /attr_templates/new
  def new
    @attr_template = AttrTemplate.new
  end

  # GET /attr_templates/1/edit
  def edit
  end

  # POST /attr_templates
  # POST /attr_templates.json
  def create
    @attr_template = AttrTemplate.new(attr_template_params)

    respond_to do |format|
      if @attr_template.save
        format.html { redirect_to @attr_template, notice: 'Attr template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attr_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @attr_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attr_templates/1
  # PATCH/PUT /attr_templates/1.json
  def update
    respond_to do |format|
      if @attr_template.update(attr_template_params)
        format.html { redirect_to @attr_template, notice: 'Attr template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attr_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attr_templates/1
  # DELETE /attr_templates/1.json
  def destroy
    @attr_template.destroy
    respond_to do |format|
      format.html { redirect_to attr_templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attr_template
      @attr_template = AttrTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attr_template_params
      params[:attr_template]
    end
end
