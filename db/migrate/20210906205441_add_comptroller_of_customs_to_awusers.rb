class AddComptrollerOfCustomsToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :comptroller_of_customs, :boolean
  end
end
