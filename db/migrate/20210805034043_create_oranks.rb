class CreateOranks < ActiveRecord::Migration[5.0]
  def change
    create_table :oranks, description: :string, primary_key: :rankcode do |t|
      t.timestamps
    end
  
  end
end
