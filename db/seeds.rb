require 'csv'



CSV.foreach(Rails.root.join('lib', 'seeds', 'user_data.csv'), headers: true) do |row|
  User.create! do |model|
    model.id = row[0]
    model.name = row[1]
    model.email = row[2]
    model.password = row[3]
    model.admin = row[3]
    model.cmisuser = row[3]
    model.stationname = row[3]
  end
end


CSV.foreach(Rails.root.join('lib', 'seeds', 'item_2021-03-01_17h02m50.csv'), headers: true) do |row|
  Item.create! do |model|
    model.id = row[0]
    model.name = row[1]
    model.category = row[2]
    model.quantity = row[3]
    model.description = row[4]
    model.created_at = row[5]
    model.updated_at = row[6]
    model.remaining_quantity = row[7]
    model.serial = row[8]
    model.price = row[9]
    model.consumable = row[10]
  end
end

CSV.foreach(Rails.root.join('lib', 'seeds', 'member_2021-03-01_17h03m01.csv'), headers: true) do |row|
  Member.create! do |model|
    model.id = row[0]
    model.name = row[1]
    model.email = row[2]
    model.phone = row[3]
    
    model.created_at = row[4]
    model.updated_at = row[5]
    model.supstaff = row[6]
    model.oic = row[7]
    model.section = row[8]
    
  end
end




puts "There are now #{User.count} rows in the Users table"
puts "There are now #{Member.count} rows in the Users table"
puts "There are now #{Item.count} rows in the Users table"
