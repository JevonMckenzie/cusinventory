class AcctypesController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def create
 
    @acctype = Acctype.new(acctype_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @acctype.save
      redirect_to :root, notice: 'Account Type was successfully created.'
    else
      render :new
    end
  end

  def new
    @acctype = Acctype.new
  end



#class CodeClass
#   def self.code_function(code)     
#     code.chars.map{|x| x.ord}.join.to_i
#   end
#   CodeClass.code_function "CUACT"
#end


 def acctype_params
    params.require(:acctype).permit(:acctcode, :description, :code)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end


  end