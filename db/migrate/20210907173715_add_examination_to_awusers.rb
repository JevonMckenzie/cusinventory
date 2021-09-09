class AddExaminationToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :examination, :boolean
  end
end
