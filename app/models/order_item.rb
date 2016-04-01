class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :stock_type
  has_one :stock
  has_one :unit
end
