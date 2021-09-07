class AddAcctTvillageToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_tvillage, :boolean
  end
end
