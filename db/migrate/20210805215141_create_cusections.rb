class CreateCusections < ActiveRecord::Migration[5.0]
    def change
    create_table :cusections, description: :string, primary_key: :secode do |t|
      t.timestamps
    end
  end
end
