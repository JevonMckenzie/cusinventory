class CreateToners < ActiveRecord::Migration
    create_table :toners, id: false do |t|
      t.primary_key :requisitionnumber
      t.string :username
      t.string :tonername
      t.integer :quantity
      t.string :sectionname
      t.string :stationname
      t.datetime :requestdate
      t.string :comment
      t.datetime :issuedate
      t.string :issuedby
      t.string :issuecomment
      t.references :user, null: false, foreign_key: true 
     
      t.timestamps
    end
  end

