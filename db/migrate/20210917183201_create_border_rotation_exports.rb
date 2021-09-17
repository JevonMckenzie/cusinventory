class CreateBorderRotationExports < ActiveRecord::Migration[5.0]
  def change
    create_table :border_rotation_exports do |t|
      #Table exports
      t.string :exporter_name
      t.string :vehicle_color
      t.string :rot_num
      t.string :current_date
      t.time	:current_time #date logged
      t.string :goods_description
      t.string :license_num
      t.string :entry
      
      t.timestamps
    end
  end
end
