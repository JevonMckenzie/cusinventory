class AddExaminer1ToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :examiner1, :boolean
  end
end
