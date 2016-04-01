class StockType < ActiveRecord::Base
  belongs_to :ingredient
  has_many :order_items
  has_many :stocks
  has_many :ingredients
end
