class AddAcctPgiaToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_pgia, :boolean
  end
end
