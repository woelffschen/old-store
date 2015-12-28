class Article < ActiveRecord::Base

  belongs_to :category
  has_many :shopping_items

  enum colour: [:black, :white, :red]
  enum size: [:S, :M, :L, :XL, :XXL]

end
