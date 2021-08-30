class AddCodeToAcctypes < ActiveRecord::Migration[5.0]
  def change
    add_column :acctypes, :code, :string
  end
end
