class Component < ActiveRecord::Base
  belongs_to :stock
  has_one :stock
end
