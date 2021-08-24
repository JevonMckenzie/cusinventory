class PostmodsController < ApplicationController
  before_action :set_postmod, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! #, except: [:show, :index]
  # GET /postmods
  # GET /postmods.json
  def index
    @postmods = Postmod.all
  end

  # GET /postmods/1
  # GET /postmods/1.json
  def show
  end

  # GET /postmods/new
  def new
    @postmod = Postmod.new
  end

  # GET /postmods/1/edit
  def edit
  end

  # POST /postmods
  # POST /postmods.json
  def create
    @postmod = Postmod.new(postmod_params)
    @postmod.user = current_user
    @postmod.otherasdbox = @current_user.email
    respond_to do |format|
      if @postmod.save
       ######### PostmodMailer.with(postmod: @postmod).welcome_email.deliver_later
         PostmodMailer.welcome_email(@postmod).deliver
        #redirect_back(fallback_location: root_path)
     
        format.html { redirect_to @postmod, notice: 'Post Modification Request has been submitted.' }
     ####### #  @postmod.save_attachments(postmod_params) if params[:postmod][:postmod_data]
       # format.html { redirect_to @postmod, notice: 'File successfully uploaded.' }
        
        #format.json { render :show, status: :created, location: @postmod }       
      else
        format.html { render :new }
        format.json { render json: @postmod.errors, status: :unprocessable_entity }

         flash[:error] = @postmod.errors.full_messages
      #redirect_back(fallback_location: root_path)
      end
      
    end
  end


  # PATCH/PUT /postmods/1
  # PATCH/PUT /postmods/1.json
  def update
    respond_to do |format|
      if @postmod.update(postmod_params)
        PostmodMailer.welcome_email(@postmod).deliver
        format.html { redirect_to @postmod, notice: 'Postmod was successfully updated.' }
        format.json { render :show, status: :ok, location: @postmod }
      else
        format.html { render :edit }
        format.json { render json: @postmod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postmods/1
  # DELETE /postmods/1.json
  def destroy
    @postmod.destroy
    respond_to do |format|
      format.html { redirect_to postmods_url, notice: 'Postmod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postmod
      @postmod = Postmod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postmod_params
      params.require(:postmod).permit(:officecode, :entrynum, :created_at, :updated_at, :mof, :beltrade, :motourism, :mohealth, :moeducation, :mosecurity, :dciagency, :bosie, :other, :government, :nagreement, :doe, :cpharmacy, :townership, :centralbank, :exporter, :importer, :noitems, :nopackage, :vessel, :fccontainernum, :location, :nmass, :tainvoice, :description, :commcode, :vinserial, :airbill, :origin, :gmass, :currency, :iquantity, :procexproccode, :itemvalue, :prevdocrefnum, :bolading, :amendfeerec, :amendfeerecgm, :transletter, :invoice, :vvslip, :sscertificate, :otherasd, :popayment, :certorigin, :worksheet, :overlandedcert, :othercertbox, :otherasdbox, :reason, :approved, :denied, :pdfile, :addinfo, :otherexcert, :adminreason, :ammendcost, :recorded, :brokeremail)
    end
end
