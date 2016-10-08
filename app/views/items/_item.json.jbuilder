json.extract! item, :id, :name, :price, :active, :tipo_producto_id, :created_at, :updated_at
json.url item_url(item, format: :json)