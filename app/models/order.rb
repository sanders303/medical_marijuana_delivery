class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_many :order_items
end
