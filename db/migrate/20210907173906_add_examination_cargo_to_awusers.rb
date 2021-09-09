class AddExaminationCargoToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :examination_cargo, :boolean
  end
end
