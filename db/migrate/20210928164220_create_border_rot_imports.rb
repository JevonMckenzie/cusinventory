class CreateBorderRotImports < ActiveRecord::Migration[5.0]
  def change
    create_table :border_rot_imports do |t|
      #entering users
      t.date :date_in
      t.time :time_in
      t.string :rot_num
      t.string :license_plate
      t.string :vehicle_description
      t.string :vehicle_color
      t.string :driver_name
      t.string :owner
      t.string :goods_description
      t.string :vin
      #issuing officer id
      
      #exiting users/clearance to exit customs compound
      t.string :destination
      t.date :date_out
      t.time :time_out

      #clearing officer id
      t.timestamps
    end
  end
end
