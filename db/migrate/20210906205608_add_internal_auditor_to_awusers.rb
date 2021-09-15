class AddInternalAuditorToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :internal_auditor, :boolean
  end
end
