class ShoppingList < ActiveRecord::Base
  has_many :shopping_items
  belongs_to :shopping_cart
  belongs_to :order
end
