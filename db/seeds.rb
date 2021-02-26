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

puts "There are now #{User.count} rows in the Users table"