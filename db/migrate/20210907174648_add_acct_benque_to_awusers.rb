class AddAcctBenqueToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_benque, :boolean
  end
end
