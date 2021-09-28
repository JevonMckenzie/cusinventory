class CustationsController < ApplicationController
  #before_action :authenticate_user!
  def index
  end


  def create
 
    @custation = Custation.new(custation_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @custation.save
      redirect_to :root, notice: 'Account Type was successfully created.'
    else
      render :new
    end
  end

  def new
    @custation = Custation.new
  end



#class CodeClass
#   def self.code_function(code)     
#     code.chars.map{|x| x.ord}.join.to_i
#   end
#   CodeClass.code_function "CUACT"
#end


 def custation_params
    params.require(:custation).permit(:description, :code, :stncode)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end

end
