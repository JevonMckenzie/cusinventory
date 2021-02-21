class TonersController < ApplicationController
  before_action :set_toner, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!#, except: [:show, :index]
  # GET /toners
  # GET /toners.json
  def index
    @toners = Toner.all
  end

  # GET /toners/1
  # GET /toners/1.json
  def show
  end

  # GET /toners/new
  def new
    @toner = Toner.new
  end

  # GET /toners/1/edit
  def edit
  end

  # POST /toners
  # POST /toners.json
  def create
    @user = current_user
    # @user.save
    # @toner = Toner.new(toner_params)
    @toner = @user.toners.build(toner_params)  
    
# @toner.requestdate = DateTime.now
    respond_to do |format|
      if @toner.save
        format.html { redirect_to @toner, notice: 'Toner was successfully created.' }
        format.json { render :show, status: :created, location: @toner }
      else
        format.html { render :new }
        format.json { render json: @toner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toners/1
  # PATCH/PUT /toners/1.json
  def update
    respond_to do |format|
      if @toner.update(toner_params)
        format.html { redirect_to @toner, notice: 'Toner was successfully updated.' }
        format.json { render :show, status: :ok, location: @toner }
      else
        format.html { render :edit }
        format.json { render json: @toner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toners/1
  # DELETE /toners/1.json
  def destroy
    @toner.destroy
    respond_to do |format|
      format.html { redirect_to toners_url, notice: 'Toner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toner
      @toner = Toner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toner_params
      params.require(:toner).permit(:requisitionnumber, :username, :tonername, :quantity, :sectionname, :stationname, :requestdate, :comment, :issuedate, :issuedby, :quantityissued, :issuecomment)
    end
end
