class CreateBorderRotationImports < ActiveRecord::Migration[5.0]
  def change
    create_table :border_rotation_imports do |t|
      #Table imports
      t.string :importer_name
      t.string :vehicle_color
      t.string :rot_num
      t.string :current_date
      t.time	:current_time
      t.string :goods_description
      t.string :license_num
      t.string :entry
      
      t.timestamps
    end
  end
end
