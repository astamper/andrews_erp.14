class Ingredient < ActiveRecord::Base
  belongs_to :stock_type
  has_one :stock_type
  has_one :unit
end
