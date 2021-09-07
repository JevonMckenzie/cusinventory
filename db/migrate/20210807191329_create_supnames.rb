class CreateSupnames < ActiveRecord::Migration[5.0]
  def change
  create_table :supnames, supcode: :string, user_id: :integer, primary_key: :sup_id do |t|
      t.timestamps
    end
  end
end


