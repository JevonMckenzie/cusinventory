class AddCodeToCustations < ActiveRecord::Migration[5.0]
  def change
    add_column :custations, :code, :string
  end
end
