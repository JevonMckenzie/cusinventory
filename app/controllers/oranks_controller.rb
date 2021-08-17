class OranksController < ApplicationController
  def index
  end


  def create
 
    @orank = Orank.new(orank_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @orank.save
      redirect_to :root, notice: 'Officer Rank was successfully created.'
    else
      render :new
    end
  end

  def new
    @orank = Orank.new
  end



#class CodeClass
#   def self.code_function(code)     
#     code.chars.map{|x| x.ord}.join.to_i
#   end
#   CodeClass.code_function "CUACT"
#end


 def orank_params
    params.require(:orank).permit(:rankcode, :description, :code)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end
end
