class AddCodeToAsyfxns < ActiveRecord::Migration[5.0]
  def change
    add_column :asyfxns, :code, :string
  end
end
