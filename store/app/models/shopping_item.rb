class ShoppingItem < ActiveRecord::Base
  belongs_to :shopping_list
  belongs_to :article
end
