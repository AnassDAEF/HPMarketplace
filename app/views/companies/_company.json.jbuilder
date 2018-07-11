json.extract! company, :id, :name, :adress1, :adress2, :zipcode, :city, :email, :phone, :created_at, :updated_at
json.url company_url(company, format: :json)
