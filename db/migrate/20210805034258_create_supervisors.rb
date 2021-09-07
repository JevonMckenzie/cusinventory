class CreateSupervisors < ActiveRecord::Migration[5.0]
    def change
    create_table :supervisors, description: :string, primary_key: :supcode do |t|
      t.timestamps
    end
  
  end
end
