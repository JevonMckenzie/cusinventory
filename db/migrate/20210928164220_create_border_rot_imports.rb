class CreateBorderRotImports < ActiveRecord::Migration[5.0]
  def change
    create_table :border_rot_imports do |t|
      
      t.timestamps
    end
  end
end
