class Order < ActiveRecord::Base
  belongs_to :address
  belongs_to :bank_account
  belongs_to :user
  belongs_to :shopping_list
  belongs_to :shipping_method
end
