class AddOfficerIiToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :OfficerII, :boolean
  end
end
