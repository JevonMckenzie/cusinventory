class BorderRotImport < ApplicationRecord

    belongs_to :issuing_officer, :class_name => 'User'
    belongs_to :clearing_officer, :class_name => 'User'
end
