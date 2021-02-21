json.extract! toner, :id, :requisitionnumber, :username, :tonername, :quantity, :user_id, :sectionname, :stationname, :requestdate, :comment, :issuedate, :issuedby, :issuecomment, :created_at, :updated_at
json.url toner_url(toner, format: :json)
