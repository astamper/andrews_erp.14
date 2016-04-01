class Unit < ActiveRecord::Base
  belongs_to :unit
  belongs_to :component
  belongs_to :ingredient
  belongs_to :stock
  belongs_to :order_item
  has_one :unit
end
