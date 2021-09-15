class AddAcctLcargoexamToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_lcargoexam, :boolean
  end
end
