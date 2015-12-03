class ShoppingList < ActiveRecord::Base
  has_many :shopping_items
  has_one :shopping_cart
  has_one :order
end
