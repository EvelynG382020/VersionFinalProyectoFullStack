json.extract! detail_sale, :id, :detail, :caratula, :url, :value, :contract, :buyer_id, :created_at, :updated_at
json.url detail_sale_url(detail_sale, format: :json)
