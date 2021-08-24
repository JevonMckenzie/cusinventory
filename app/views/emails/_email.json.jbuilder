json.extract! email, :id, :passwordreset, :unblockemail, :newuser, :firstname, :lastname, :email, :reason, :created_at, :updated_at
json.url email_url(email, format: :json)
