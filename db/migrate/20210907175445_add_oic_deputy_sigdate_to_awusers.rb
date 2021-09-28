class AddOicDeputySigdateToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :oic_deputy_sigdate, :datetime
  end
end
