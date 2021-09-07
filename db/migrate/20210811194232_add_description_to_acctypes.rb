class AddDescriptionToAcctypes < ActiveRecord::Migration[5.0]
  def change
    add_column :acctypes, :description, :string
  end
end
