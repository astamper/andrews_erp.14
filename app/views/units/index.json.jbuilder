json.array!(@units) do |unit|
  json.extract! unit, :id, :name, :unit_id, :conversion, :component_id, :ingredient_id, :stock_id, :order_item_id
  json.url unit_url(unit, format: :json)
end
