class AddAcctSantaelenaToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_santaelena, :boolean
  end
end
