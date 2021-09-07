class AddOicDeputyToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :oic_deputy, :string
  end
end
