class AddOfficerIiiToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :officerIII, :boolean
  end
end
