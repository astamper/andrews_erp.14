json.array!(@components) do |component|
  json.extract! component, :id, :quantity, :stock_id
  json.url component_url(component, format: :json)
end
