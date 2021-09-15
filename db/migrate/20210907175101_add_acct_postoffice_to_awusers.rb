class AddAcctPostofficeToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_postoffice, :boolean
  end
end
