json.extract! user, :id, :firstname, :lastname, :phone, :mobile, :email, :login, :password, :company_id, :usertype_id, :created_at, :updated_at
json.url user_url(user, format: :json)
