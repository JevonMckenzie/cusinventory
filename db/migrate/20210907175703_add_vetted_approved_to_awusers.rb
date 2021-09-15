class AddVettedApprovedToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :vetted_approved, :string
  end
end
