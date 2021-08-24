class CusectionsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

    def create
 
    @cusection = Cusection.new(cusection_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @cusection.save
      redirect_to :root, notice: 'Section was successfully created.'
    else
      render :new
    end
  end

  def new
    @cusection = Cusection.new
  end



#class CodeClass
#   def self.code_function(code)     
#     code.chars.map{|x| x.ord}.join.to_i
#   end
#   CodeClass.code_function "CUACT"
#end


 def cusection_params
    params.require(:cusection).permit(:secode, :description, :code)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end


  end