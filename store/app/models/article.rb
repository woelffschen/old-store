class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :shopping_item

  enum colour: [:black, :white, :red]
  enum size: [:S, :M, :L, :XL, :XXL]
end
