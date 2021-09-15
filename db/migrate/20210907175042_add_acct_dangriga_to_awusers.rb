class AddAcctDangrigaToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_dangriga, :boolean
  end
end
