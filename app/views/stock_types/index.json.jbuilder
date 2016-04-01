json.array!(@stock_types) do |stock_type|
  json.extract! stock_type, :id, :name, :ingredient_id
  json.url stock_type_url(stock_type, format: :json)
end
