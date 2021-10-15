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
