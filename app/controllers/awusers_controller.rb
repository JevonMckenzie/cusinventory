class AwusersController < ApplicationController
  #before_action :authenticate_user!
  
  def index
    @awusers = Awuser.all
     @users = User.all
  end

  def new
    @awuser = Awuser.new
    #@awuser_change = Awuser_change.new
    #@awuser_change = @awuser.build_awuser_change

  end 

  def edit
    @awuser = Awuser.find(params[:id])
  end



  def username
    @awuser_with_class = Awuser.where(username: params[:username] )
      respond_to do |format|
        format.js 
        format.html
      end
  end

  def create
  @awuser = Awuser.new(awuser_params)
  #@awuser_change = Awuser_change.new(awuser_change_params)
  #@awuser_change = @awuser.awuser_changes.build(:awuser_change)
   #@awuser_change = @awuser.awuser_changes.build(:awuser_id=>@awuser.id)
   #@awuser_change = @awuser.toners.build(toner_params)
  #@awuser_change.awusers << @awuser
  #@awuser_change.awuser_id = @awuser.id

  respond_to do |format|
    if @awuser.save
      format.html { redirect_to @awuser, notice: 'Asyworld User was successfully added' }
      format.json { render :show, status: :created, location: @awuser }
    else
      format.html { render :new }
      format.json { render json: @awuser.errors, status: :unprocessable_entity }
    end
  end
  end

    def update
    if @awuser_change.update(awuser_params)
      redirect_to :root, notice: 'Change was successfully updated.'
    else
      render :edit
    end
  end

   def awuser_params
    params.require(:awuser).permit(:username, :user_id, :awuser_id, :type_of_migration, :comptroller_of_customs, :deputy_comptroller, :internal_auditor, :first_class_clerk, :officer1, :officerIII, :examinerII, :system_admin1, :dbadmin2, :netadmin1, :legal_councel, :fo, :second_class_clerk, :OfficerII, :examiner1, :examinerIII, :system_adminII, :developer, :bze_city_headquarters, :big_creek, :consejo, :dangriga, :owalk, :sanpedro, :tvillage, :benque, :pgia, :pg, :santaelena, :bluecreek, :jalacte, :postoffice, :sup_name, :oic_deputy_sigdate, :oic_deputy, :sup_sigdate, :vetted_approved, :vetted_approved_date, :ass_comptroller, :aworldadmin, :addinfo)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end

end
