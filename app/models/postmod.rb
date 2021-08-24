class Postmod < ApplicationRecord
  belongs_to :user
  has_attached_file :pdfile
  #attr_accessible :pdfile
  validates_attachment_content_type :pdfile, content_type: ['application/pdf'], :allow_nil => true
  


  
  validates  :approved, :presence => true, :if => :amendfeerec?
  validates  :approved, :presence => true, :if => :amendfeerecgm?

  validates  :approved, :presence => true, :if => :ammendcost?

  validates  :adminreason, :presence => true, :if => :denied?  
  validates  :adminreason, :presence => true, :if => :addinfo?  

  validates :reason, :presence => true, :if => :transletter?
  validates :reason, :presence => true, :if => :invoice?
  validates :reason, :presence => true, :if => :vvslip?
  validates :reason, :presence => true, :if => :sscertificate?
  #validates :reason, :presence => true, :if => :otherasdbox?
  validates :reason, :presence => true, :if => :popayment?
  validates :reason, :presence => true, :if => :certorigin?
  validates :reason, :presence => true, :if => :worksheet?
  validates :reason, :presence => true, :if => :overlandedcert?
  validates :entrynum, :presence => true
  validates :officecode, :presence => true

end


