class SupervisorsController < ApplicationController
  before_action :authenticate_user!
   def index
  end

    def create
 
    @supervisor = Supervisor.new(supervisor_params)#params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    
    if @supervisor.save
      redirect_to :root, notice: 'Account Type was successfully created.'
    else
      render :new
    end
  end

  def new
    @supervisor= Supervisor.new
  end



#class CodeClass
#   def self.code_function(code)     
#     code.chars.map{|x| x.ord}.join.to_i
#   end
#   CodeClass.code_function "CUACT"
#end


 def supervisor_params
    params.require(:supervisor).permit(:supcode, :description, :code)
    #params[:acctcode] = params[:code].chars.map{|x| x.ord}.join.to_i
  end
end
