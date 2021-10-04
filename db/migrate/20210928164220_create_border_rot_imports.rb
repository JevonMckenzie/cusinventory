class CreateBorderRotImports < ActiveRecord::Migration[5.0]
  def change
    create_table :border_rot_imports do |t|
      #entering users
      t.date :date_time_in
      t.string :rot_num
      t.string :license_plate_in
      t.string :vehicle_description
      t.string :vehicle_color
      t.string :driver_name
      t.string :owner
      t.string :goods_description
      t.string :vin
      t.string :destination
      #issuing officer id
      
      #exiting users/clearance to exit customs compound
      t.string :entry
      t.string :license_plate_out
      t.date :date_time_out
      #clearing officer id
      
      t.timestamps
    end
  end
end
