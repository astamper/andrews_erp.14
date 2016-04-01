class Component < ActiveRecord::Base
  belongs_to :stock
  has_one :stock
  has_one :unit
end
