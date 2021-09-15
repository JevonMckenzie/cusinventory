class AddPgiaToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :pgia, :boolean
  end
end
