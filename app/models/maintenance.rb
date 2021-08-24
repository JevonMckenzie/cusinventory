class Maintenance < ApplicationRecord
	belongs_to :user, :optional => true
end
