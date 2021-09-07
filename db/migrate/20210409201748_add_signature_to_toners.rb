class AddSignatureToToners < ActiveRecord::Migration[5.0]
  def change
    add_column :toners, :signature, :string
  end
end
