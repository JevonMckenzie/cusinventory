class AddSupSigdateToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :sup_sigdate, :datetime
  end
end
