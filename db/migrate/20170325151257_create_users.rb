class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      
      t.references :border_rot_import
      t.timestamps
    end
  end
end
