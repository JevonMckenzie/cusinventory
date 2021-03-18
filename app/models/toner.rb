class Toner < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :member
	validates :username, :tonername, :quantity, :sectionname, :requestdate, :presence => true
         attr_readonly :username,  :quantity, :sectionname, :requestdate, :stationname


        def requistionnumber
           return self.requisitionnumber
        end


end
