class Product < ActiveRecord::Base
  belongs_to :order_item
  has_many :orders
  has_many :pictures
end
