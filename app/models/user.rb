class User < ApplicationRecord

	#has_many :maintenances
    has_many :toners
     #has_many :awusers
	#belongs_to :member
     #belongs_to :orank
     #belongs_to :custation
     #belongs_to :acctype
     #belongs_to :asyfxn
     #belongs_to :supervisor
     #belongs_to :cusection
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
