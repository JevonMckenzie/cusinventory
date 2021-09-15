class CreateAcctypes < ActiveRecord::Migration[5.0]
    def change
    create_table :acctypes, description: :string, primary_key: :acctcode do |t|
      t.timestamps
    end
  
  end
end


