class AddLegalCouncelToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :legal_councel, :boolean
  end
end
