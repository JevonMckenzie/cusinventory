class AddPgiaCargoToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :pgia_cargo, :boolean
  end
end
