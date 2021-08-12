json.extract! renter, :id, :name, :phone, :rut, :mail, :detail, :owner_id, :property_id, :created_at, :updated_at
json.url renter_url(renter, format: :json)
