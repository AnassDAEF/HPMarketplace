json.extract! main_object, :id, :adress1, :adress2, :zipcode, :city, :reference, :access_code, :appt_number, :surface_area, :object_type_id, :tenant_or_owner_id, :pro_in_charge_id, :created_at, :updated_at
json.url main_object_url(main_object, format: :json)
