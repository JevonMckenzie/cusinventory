class AddAddressToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :address, :string
  end
end
