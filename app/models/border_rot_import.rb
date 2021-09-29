class BorderRotImport < ApplicationRecord
    belongs_to :issuing_officer, :class_name => 'BorderRotationImport'
    belongs_to :clearing_officer, :class_name => 'BorderRotationImport'
end
