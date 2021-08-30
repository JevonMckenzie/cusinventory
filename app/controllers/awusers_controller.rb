class AwusersController < ApplicationController
  #before_action :authenticate_user!
  
  def index
    @awusers = Awuser.all
     @users = User.all
  end

  def new
    @awuser = Awuser.new
  end 

  def edit
    @awuser = Awuser.fin(params[:id])
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

   def awuser_params
    params.require(:awuser).permit(:username, :user_id)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end

end
