class ShoppingCart < ActiveRecord::Base
  belongs_to :user
  belongs_to :shopping_list
end
