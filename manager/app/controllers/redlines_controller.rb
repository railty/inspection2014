class RedlinesController < ApplicationController
  before_action :set_redline, only: [:show, :edit, :update, :destroy]

  # GET /redlines
  # GET /redlines.json
  def index
    @redlines = Redline.all
  end

  # GET /redlines/1
  # GET /redlines/1.json
  def show
  end

  # GET /redlines/new
  def new
    @redline = Redline.new
  end

  # GET /redlines/1/edit
  def edit
  end

  # POST /redlines
  # POST /redlines.json
  def create
    @redline = Redline.create(upload_redline_params)
    respond_to do |format|
      if @redline.save
        format.html { redirect_to @redline, notice: 'Redline was successfully created.' }
        format.json { render action: 'show', status: :created, location: @redline }
      else
        format.html { render action: 'new' }
        format.json { render json: @redline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redlines/1
  # PATCH/PUT /redlines/1.json
  def update
    @fid = params[:fid]
    @ano = params[:ano]
    @result = @redline.update_value(@fid, @ano, params[:value])
    respond_to do |format|  
      format.js  
    end      
  end

  # DELETE /redlines/1
  # DELETE /redlines/1.json
  def destroy
    @redline.destroy
    respond_to do |format|
      format.html { redirect_to redlines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redline
      @redline = Redline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_redline_params
      params.require(:redline).permit(:xml)
    end
end
