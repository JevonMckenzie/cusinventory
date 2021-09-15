class AddCodeToOranks < ActiveRecord::Migration[5.0]
  def change
    add_column :oranks, :code, :string
  end
end
