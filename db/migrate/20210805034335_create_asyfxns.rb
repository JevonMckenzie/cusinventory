class CreateAsyfxns < ActiveRecord::Migration[5.0]
    def change
      create_table :asyfxns, description: :string, primary_key: :asyfxn do |t|
      t.timestamps
    end
  end
end


