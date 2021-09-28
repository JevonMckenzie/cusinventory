class AddPgiaPassengerToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :pgia_passenger, :boolean
  end
end
