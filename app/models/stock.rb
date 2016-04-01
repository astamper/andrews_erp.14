class Stock < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :stock_type
  belongs_to :component
  belongs_to :order_item
  has_many :components
  has_one :unit
end
