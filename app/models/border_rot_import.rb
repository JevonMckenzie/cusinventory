class BorderRotImport < ApplicationRecord
    belongs_to :issuing_officer ,class_name: 'User'
    delegate :name,
    to: :issuing_officer,
    prefix: true
    
    attribute :date_time_in, :datetime, default: -> { Time.current }
    attribute :date_time_out, :datetime, default: -> { Time.current }

    attribute :vin, :string, default: 'N/A'
    attribute :license_plate_in, :string, default: 'N/A'
end
