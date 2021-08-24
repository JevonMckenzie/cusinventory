class AsyfxnsController < ApplicationController
  before_action :authenticate_user!
  def new
  end


  def create
 
    @asyfxn = Asyfxn.new(asyfxn_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @asyfxn.save
      redirect_to :root, notice: 'Account Type was successfully created.'
    else
      render :new
    end
  end

  def new
    @asyfxn = Asyfxn.new
  end



#class CodeClass
#   def self.code_function(code)     
#     code.chars.map{|x| x.ord}.join.to_i
#   end
#   CodeClass.code_function "CUACT"
#end


 def asyfxn_params
    params.require(:asyfxn).permit(:asyfxn, :description, :code)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end

end