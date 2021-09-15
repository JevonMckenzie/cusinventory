class AddSantaelenaToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :santaelena, :boolean
  end
end
