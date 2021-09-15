class AwuserChangesController < ApplicationController

  def index
    @awuser_changes = Awuser.all
     @users = User.all
  end

  def new
   @awuser_change = AwuserChange.new
   end

   def show
   @awuser_change = AwuserChange.find(params[:id])
  end


  def edit
     #@awusers = AwuserChange.all
    @awuser_change = AwuserChange.find(params[:id])
  end 

  def update
    if @awuser_change.update(awuser_change_params)
      redirect_to :root, notice: 'Change was successfully updated.'
    else
      render :edit
    end
  end

  def create
       @awuser_change = AwuserChange.new(awuser_change_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @awuser_change.save
      redirect_to :root, notice: 'Account Type was successfully created.'
    else
      render :new
    end
 
  end


def awuser_change_params
    params.require(:awuser_change).permit(:id, :awuser_id, :acc_clerk)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end


end
