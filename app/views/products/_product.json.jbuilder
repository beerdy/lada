json.extract! product, :id, :title, :description, :slave, :image_uid, :image_name, :url, :sort, :created_at, :updated_at
json.url product_url(product, format: :json)
