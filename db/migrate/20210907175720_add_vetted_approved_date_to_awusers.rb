class AddVettedApprovedDateToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :vetted_approved_date, :datetime
  end
end
