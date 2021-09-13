class Awuser < ApplicationRecord
	belongs_to :user
	has_many :awuser_changes
	#accepts_nested_attributes_for :awuser_changes
	#accepts_nested_attributes_for :awuser_change 
end

