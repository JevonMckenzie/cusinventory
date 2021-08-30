class SupnamesController < ApplicationController
  #before_action :authenticate_user!

  def index
  end

    def create
 
    @supname = Supname.new(supname_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @supname.save
      redirect_to :root, notice: 'Account Type was successfully created.'
    else
      render :new
    end
  end

  def new
    @supname= Supname.new
  end



#class CodeClass
#   def self.code_function(code)     
#     code.chars.map{|x| x.ord}.join.to_i
#   end
#   CodeClass.code_function "CUACT"
#end


 def supname_params
    params.require(:supname).permit(:sup_id, :description, :supcode, :user_id)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end


  end