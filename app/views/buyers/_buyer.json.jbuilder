json.extract! buyer, :id, :name, :phone, :rut, :mail, :detail, :owner_id, :property_id, :created_at, :updated_at
json.url buyer_url(buyer, format: :json)
