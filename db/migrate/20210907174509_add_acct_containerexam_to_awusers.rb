class AddAcctContainerexamToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_containerexam, :boolean
  end
end
