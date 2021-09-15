class AddSupcodeToSupnames < ActiveRecord::Migration[5.0]
  def change
     add_column :supnames, :supcode, :string
    add_index :supnames, :supcode
  end
end
