json.array!(@stocks) do |stock|
  json.extract! stock, :id, :initial_quantity, :current_quantity, :purchase_date, :expiration_date, :purchase_price, :batch_number, :supplier_id, :stock_type_id, :component_id, :order_item_id
  json.url stock_url(stock, format: :json)
end
