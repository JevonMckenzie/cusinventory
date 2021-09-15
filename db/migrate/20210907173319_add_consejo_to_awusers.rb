class AddConsejoToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :consejo, :boolean
  end
end
