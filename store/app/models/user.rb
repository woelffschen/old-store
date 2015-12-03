class User < ActiveRecord::Base
  belongs_to :shopping_cart
  has_many :orders
  belongs_to :address
  belongs_to :bank_account

  # GEM

end
