class AttrsController < ApplicationController
  before_action :set_attr, only: [:show, :edit, :update, :destroy, :new, :index, :create]

  # GET /attrs
  # GET /attrs.json
  def index
    if @inspection==nil then
      @attrs = Attr.all
    else
      @attrs = @inspection.attrs
    end
  end

  # GET /attrs/1
  # GET /attrs/1.json
  def show
  end

  # GET /attrs/new
  def new
    @attr = Attr.new
  end

  # GET /attrs/1/edit
  def edit
  end

  # POST /attrs
  # POST /attrs.json
  def create
    @attr = Attr.new(attr_params)
    @attr.inspection = @inspection
    respond_to do |format|
      if @attr.save
        format.html { redirect_to @attr, notice: 'Attr was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attr }
      else
        format.html { render action: 'new' }
        format.json { render json: @attr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attrs/1
  # PATCH/PUT /attrs/1.json
  def update
    respond_to do |format|
      if @attr.update(attr_params)
        format.html { redirect_to @attr, notice: 'Attr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attrs/1
  # DELETE /attrs/1.json
  def destroy
    @attr.destroy
    respond_to do |format|
      format.html { redirect_to attrs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attr
      @inspection = Inspection.find(params[:inspection_id]) if params[:inspection_id]!=nil
      @attr = Attr.find(params[:id]) if params[:id]!=nil
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attr_params
      params[:attr].permit(:name)
    end
end
