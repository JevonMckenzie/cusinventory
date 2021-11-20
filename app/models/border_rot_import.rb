#Creates the boarder rot import table, where:
#1.) the issuing officer is the person inserting description data into the system about the car and goods
#2.) the clearance officer is the person that clears the goods, allowing the importer to enter into belize
# the delegate is just to get the name of the issuing officer and clearance officer
class BorderRotImport < ApplicationRecord
    belongs_to :issuing_officer ,class_name: 'User'
    delegate :name,
    to: :issuing_officer,
    prefix: true

    belongs_to :clearance_officer, class_name: 'User'
    delegate :name,
    to: :clearance_officer,
    prefix: true
    
    attribute :date_time_in, :datetime, default: -> { Time.current }
end
