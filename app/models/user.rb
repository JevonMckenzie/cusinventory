class User < ApplicationRecord
	#has_many :maintenances
    has_many :toners
	#belongs_to :members
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
