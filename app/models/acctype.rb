class Acctype < ApplicationRecord
	self.primary_key = "acctcode"
	validates :code, uniqueness: true
    #before_save :set_code

    #protected
	   #def set_code     
	     #self.code.chars.map{|x| x.ord}.join.to_i
	      #self.code*2
	   #end

end
